package cn.edu.wic.qingsongji.bean;

public class Budget {
	private Integer id;
	private String budname;
	private String date;
	private Integer user_id;
	private Integer budamt;
	private String notes;
	public Integer getId() {
		return id;
	}
	public void setId(Integer id) {
		this.id = id;
	}
	public String getBudname() {
		return budname;
	}
	public void setBudname(String budname) {
		this.budname = budname;
	}
	public String getDate() {
		return date;
	}
	public void setDate(String date) {
		this.date = date;
	}
	public Integer getUser_id() {
		return user_id;
	}
	public void setUser_id(Integer user_id) {
		this.user_id = user_id;
	}
	public Integer getBudamt() {
		return budamt;
	}
	public void setBudamt(Integer budamt) {
		this.budamt = budamt;
	}
	public String getNotes() {
		return notes;
	}
	public void setNotes(String notes) {
		this.notes = notes;
	}
	public Budget(Integer id, String budname, String date, Integer user_id, Integer budamt, String notes) {
		super();
		this.id = id;
		this.budname = budname;
		this.date = date;
		this.user_id = user_id;
		this.budamt = budamt;
		this.notes = notes;
	}
	
	public Budget() {
		super();
	}
}
