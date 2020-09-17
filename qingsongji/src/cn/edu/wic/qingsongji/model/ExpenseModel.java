package cn.edu.wic.qingsongji.model;


public class ExpenseModel {
	private Integer id;
	private Integer user_id;
	private String usefor;
	private String way;
	private Integer amount;
	private String date;
	private String notes;
	public Integer getId() {
		return id;
	}
	public void setId(Integer id) {
		this.id = id;
	}
	public Integer getUser_id() {
		return user_id;
	}
	public void setUser_id(Integer user_id) {
		this.user_id = user_id;
	}
	public String getUsefor() {
		return usefor;
	}
	public void setUsefor(String usefor) {
		this.usefor = usefor;
	}
	public String getWay() {
		return way;
	}
	public void setWay(String way) {
		this.way = way;
	}
	public Integer getAmount() {
		return amount;
	}
	public void setAmount(Integer amount) {
		this.amount = amount;
	}
	public String getDate() {
		return date;
	}
	public void setDate(String date) {
		this.date = date;
	}
	public String getNotes() {
		return notes;
	}
	public void setNotes(String notes) {
		this.notes = notes;
	}
	public ExpenseModel(Integer id, Integer user_id, String usefor, String way, Integer amount, String date,
			String notes) {
		super();
		this.id = id;
		this.user_id = user_id;
		this.usefor = usefor;
		this.way = way;
		this.amount = amount;
		this.date = date;
		this.notes = notes;
	}
	public ExpenseModel() {
		super();
	}
	
}
