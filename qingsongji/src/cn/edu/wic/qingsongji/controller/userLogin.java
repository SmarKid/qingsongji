package cn.edu.wic.qingsongji.controller;


import javax.annotation.Resource;

import org.apache.ibatis.annotations.Param;
import org.springframework.stereotype.Controller;
import org.springframework.ui.ModelMap;
import org.springframework.web.bind.annotation.ModelAttribute;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.bind.annotation.SessionAttributes;
import org.springframework.web.servlet.ModelAndView;


import cn.edu.wic.qingsongji.bean.Budget;
import cn.edu.wic.qingsongji.bean.Source;
import cn.edu.wic.qingsongji.bean.Usefor;
import cn.edu.wic.qingsongji.bean.User;
import cn.edu.wic.qingsongji.bean.Login;
import cn.edu.wic.qingsongji.bean.userTakeIn;
import cn.edu.wic.qingsongji.bean.userTakeout;
import cn.edu.wic.qingsongji.model.ExpenseModel;
import cn.edu.wic.qingsongji.model.IncomeModel;
import cn.edu.wic.qingsongji.service.AddSourceService;
import cn.edu.wic.qingsongji.service.AddUseforService;
import cn.edu.wic.qingsongji.service.BudgetService;
import cn.edu.wic.qingsongji.service.showMainService;
import cn.edu.wic.qingsongji.service.takeInService;
import cn.edu.wic.qingsongji.service.takeOutService;
import cn.edu.wic.qingsongji.service.userService;

@Controller
@SessionAttributes(value= {"user_id","user_name","avecon"})
public class userLogin {
	@Resource
	private userService userservice;
	@Resource
	private takeOutService takeoutservice;
	@Resource
	private BudgetService budgetService;
	@Resource 
	private takeInService takeinservice;
	@Resource
	private AddSourceService addSourceService;
	@Resource
	private AddUseforService addUseforService;
	@Resource
	private showMainService showmainservice;
	
	
	
	
	@RequestMapping("main")
	public String showMain(@ModelAttribute("avecon")Integer avecon,@ModelAttribute("user_id")Integer user_id,ModelMap mm){
		System.out.println("看这里");
		Integer weeksum=showmainservice.weekExpense(user_id);
		Integer weekratio=(int)((weeksum*100)/(avecon*7));
		Integer monthsum=showmainservice.monthExpense(user_id);
		Integer monthratio=(int)((monthsum*100)/(avecon*30));
		Budget nearBudget=budgetService.queryNearBudgetByUserId(user_id);
		String nearBudNam1=null;
		String nearBudNam2=null;
		if(nearBudget!=null) {
			nearBudNam1="离"+nearBudget.getBudname()+"还需要";
			nearBudNam2="离"+nearBudget.getBudname()+"还有";
			Integer exsum=0;
			exsum+=takeoutservice.getSumAmount(user_id);
			Integer insum=0;
			insum+=takeinservice.getInSumAmount(user_id);
			Integer budamt=nearBudget.getBudamt();
			Integer diffdate=budgetService.getNearBudgetDiff(user_id);
			Integer diffdateratio=10;
			if(diffdate<30) {
				diffdateratio=(int)(diffdate*100/30);
			}
			System.out.println("budamt"+"insum"+"exsum"+"diffdate"+"avecon"+budamt+" "+insum+" "+exsum+" "+diffdate+" "+avecon);
			Integer diffamount=budamt-((insum-exsum)-(diffdate*avecon));
			Integer diffratio=(int)(((insum-exsum)-(diffdate*avecon))*100/budamt);
			System.out.println("hello"+weeksum+weekratio+avecon);
			mm.addAttribute("diffamount", diffamount);
			mm.addAttribute("diffratio", diffratio);
			mm.addAttribute("diffdate", diffdate);
			mm.addAttribute("diffdateratio", diffdateratio);
		}else {
			nearBudNam1="还没有计划";
			nearBudNam2="还没有计划";
		}
		mm.addAttribute("weeksum", weeksum);
		mm.addAttribute("weekratio", weekratio);
		mm.addAttribute("monthsum", monthsum);
		mm.addAttribute("monthratio", monthratio);
		mm.addAttribute("nearBudNam1", nearBudNam1);
		mm.addAttribute("nearBudNam2", nearBudNam2);
		return "main";
	}
	@RequestMapping(value="login")
	public ModelAndView login(String username,String password){
		Integer user_id=userservice.getUserIDByLogin(username, password);
		System.out.println("user_id="+user_id);
		User user=userservice.getUserByID(user_id);
		if(user!=null){
			System.out.println("id="+user_id+"登录");
			ModelAndView mv=new ModelAndView("redirect:/main");
			mv.addObject("user_id", user_id);
			System.out.println(user.getUsername());
			mv.addObject("user_name", user.getUsername());
			Integer avecon=userservice.getAveconById(user_id);
			mv.addObject("avecon", avecon);
			return mv;
		}
		else {
			System.out.println("鏈櫥褰�");
			return new ModelAndView("redirect:/index.jsp");
		}
	}
	@RequestMapping("signin")
	public ModelAndView signin(User user,@RequestParam("password")String password){
		userservice.insertUser(user);
		String username=user.getUsername();
		try {
		Integer user_id=userservice.getUserIdByUsername(username);
		
		Login login=new Login(user_id, username, password);
		userservice.insertLogin(login);
		for(Integer i=1;i<=3;i++){
			userservice.insertUserWay(user_id, i);
			userservice.insertUserUsefor(user_id,i);
			userservice.insertUserSource(user_id, i);
		}
		}catch(Exception e) {
			
		}
		return new ModelAndView("redirect:/index.jsp");
	}
	@RequestMapping("takeapen")
	public String showTakeapen(@ModelAttribute("user_id")Integer user_id,ModelMap mm) {
		Source[] sources=addSourceService.getSourceByUserId(user_id);
		Usefor[] usefors=addUseforService.getUseforsByUserId(user_id);
		mm.addAttribute("sources", sources);
		mm.addAttribute("usefors", usefors);
		return "takeapen";
	}
	@RequestMapping("takeout")
	public String takeout(userTakeout usertakeout){
		takeoutservice.insertTakeout(usertakeout);
		return "redirect:takeapen";
	}
	@RequestMapping("addbudget")
	public ModelAndView  budget(Budget budget) {
			budgetService.insertBudget(budget);
			return new ModelAndView("redirect:/budget");
	}
	@RequestMapping("budget")
	public String inquiryBudget(@ModelAttribute("user_id")Integer user_id,ModelMap mm) {
		System.out.println(user_id);
		Budget[] budgetArray=budgetService.queryBudgetArrayByUserId(user_id);
		mm.addAttribute("budgetArray", budgetArray);
		return "budget";
	}

	@RequestMapping("takein")
	public String takein(userTakeIn usertakein){
		takeinservice.takeInInsert(usertakein);
		return "redirect:takeapen";
	}
	@RequestMapping("addsource")
	public ModelAndView  addsource(@ModelAttribute("user_id")Integer user_id,Source source) {
		try {
			addSourceService.insertSource(source);
		} catch (Exception e) {
			
		}
			System.out.println(source);
			String sourcename=source.getSource();
			Integer source_id=addSourceService.getSourceIdBySource(sourcename);
			System.out.println("source"+source_id);
			addSourceService.insertUserSource(user_id, source_id);
			return new ModelAndView("redirect:/setting");
	}
	@RequestMapping("addusefor")
	public ModelAndView addusefor(@ModelAttribute("user_id")Integer user_id,Usefor usefor) {
		try {
		addUseforService.insertUsefor(usefor);
		}catch(Exception e){}
		String useforname=usefor.getUsefor();
		Integer usefor_id=addUseforService.getUseforIdByUsefor(useforname);
		addUseforService.insertUserUsefor(user_id, usefor_id);
		return new ModelAndView("redirect:/setting");
	}
	@RequestMapping("setting")
	public String showSetting(@ModelAttribute("user_id")Integer user_id,ModelMap mm) {
		Source[] sources=addSourceService.getSourceByUserId(user_id);
		Usefor[] usefors=addUseforService.getUseforsByUserId(user_id);
		mm.addAttribute("sources", sources);
		mm.addAttribute("usefors", usefors);
		return "setting";
	}
	@RequestMapping("deletesource")
	public ModelAndView deleteSource(@ModelAttribute("user_id")Integer user_id,@Param("source_id")Integer source_id) {
		System.out.println("删除来源 "+user_id+" "+source_id);
		addSourceService.deleteSourceByUserId(user_id, source_id);
		return new ModelAndView("redirect:/setting");
	}
	@RequestMapping("deleteusefor")
	public ModelAndView deleteUsefor(@ModelAttribute("user_id")Integer user_id,@Param("usefor_id")Integer usefor_id) {
		addUseforService.deleteUseforByUserId(user_id, usefor_id);
		return new ModelAndView("redirect:/setting");
	}
	@RequestMapping("deletebudget")
	public ModelAndView deletebudget(Integer id) {
		budgetService.deleteBudget(id);
		return new ModelAndView("redirect:/budget");
	}
	@RequestMapping("record")
	public String inquiryExpense(@ModelAttribute("user_id")Integer user_id,ModelMap mm) {
		ExpenseModel[] expenseModels=takeoutservice.queryExpenseArrayByUserId(user_id);
		mm.addAttribute("expenseModelArray", expenseModels);
		IncomeModel[] incomeModels=takeinservice.queryIncomeArrayByUserId(user_id);
		mm.addAttribute("incomeModelArray", incomeModels);
		return "record";
	}
	@RequestMapping("userinfo")
	public String showUserinfo(@ModelAttribute("user_id")Integer user_id,ModelMap mm) {
		User user=userservice.getUserByID(user_id);
		String user_eamil=user.getEmail();
		String user_telnum=user.getTelnum();
		String user_notes=user.getNotes();
		mm.addAttribute("user_eamil", user_eamil);
		mm.addAttribute("user_telnum", user_telnum);
		mm.addAttribute("user_notes", user_notes);
		return "userinfo";
	}
	@RequestMapping("changeInfo")
	public ModelAndView changeInfo(User user ,@ModelAttribute("user_id")Integer user_id) {
		user.setId(user_id);
		System.out.println(user);
		userservice.changeUserInfo(user);
		ModelAndView mv=new ModelAndView("redirect:/userinfo");
		mv.addObject("user_name", user.getUsername());
		return mv;
	}
	@RequestMapping("deleteexpense")
	public ModelAndView deleteExpense(Integer id) {
		takeoutservice.deleteExpense(id);
		return new ModelAndView("redirect:/record");
	}
	@RequestMapping("deleteincome")
	public ModelAndView deleteIncome(Integer id) {
		takeinservice.deleteIncome(id);
		return new ModelAndView("redirect:/record");
	}
	@RequestMapping("about")
	public String showAbout(){
		return "about";
	}
	@RequestMapping("updateavecon")
	public ModelAndView updateAvecon(@ModelAttribute("user_id")Integer user_id,@Param("avecon")Integer avecon){
		userservice.updateAvecon(user_id, avecon);
		ModelAndView mv=new ModelAndView("redirect:/setting");
		mv.addObject("avecon", avecon);
		return mv;
	}
}
