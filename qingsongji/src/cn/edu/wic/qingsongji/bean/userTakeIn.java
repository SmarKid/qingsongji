package cn.edu.wic.qingsongji.bean;

public class userTakeIn {
	private Integer user_id;
	private Integer way_id;
	private Integer source_id;
	private Integer amount;
	private String date;
	private String notes;
	public Integer getUser_id() {
		return user_id;
	}
	public void setUser_id(Integer user_id) {
		this.user_id = user_id;
	}
	public Integer getWay_id() {
		return way_id;
	}
	public void setWay_id(Integer way_id) {
		this.way_id = way_id;
	}
	public Integer getSource_id() {
		return source_id;
	}
	public void setSource_id(Integer source_id) {
		this.source_id = source_id;
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
	public userTakeIn(Integer user_id, Integer way_id, Integer source_id,
			Integer amount, String date, String notes) {
		super();
		this.user_id = user_id;
		this.way_id = way_id;
		this.source_id = source_id;
		this.amount = amount;
		this.date = date;
		this.notes = notes;
	}
	public userTakeIn() {
		super();
	}
}
