package cn.edu.wic.qingsongji.service.test;

import org.junit.Before;
import org.junit.Test;
import org.springframework.context.ApplicationContext;
import org.springframework.context.support.ClassPathXmlApplicationContext;

import cn.edu.wic.qingsongji.bean.Budget;
import cn.edu.wic.qingsongji.mapper.BudgetMapper;

public class BudgetServiceTest {
	ApplicationContext context = null;
    
    @Before
    public void init(){
        context = new ClassPathXmlApplicationContext("classpath:spring/application-dao.xml");
    }
     
    @Test
    public void testqueryBudgetArrayByUserId(){
        BudgetMapper budgetMapper = (BudgetMapper) context.getBean("userMapper");
        Budget[] budgets = budgetMapper.queryBudgetArrayByUserId(1);
        System.out.println(budgets[1].getBudname());
    }
}
