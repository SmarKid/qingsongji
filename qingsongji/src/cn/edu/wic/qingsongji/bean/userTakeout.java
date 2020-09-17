package cn.edu.wic.qingsongji.bean;

public class userTakeout {
	private Integer id;
	private Integer user_id;
	private Integer way_id;
	private Integer usefor_id;
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
	public Integer getWay_id() {
		return way_id;
	}
	public void setWay_id(Integer way_id) {
		this.way_id = way_id;
	}
	public Integer getUsefor_id() {
		return usefor_id;
	}
	public void setUsefor_id(Integer usefor_id) {
		this.usefor_id = usefor_id;
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
	
	public userTakeout(Integer id, Integer user_id, Integer way_id, Integer usefor_id, Integer amount, String date,
			String notes) {
		super();
		this.id = id;
		this.user_id = user_id;
		this.way_id = way_id;
		this.usefor_id = usefor_id;
		this.amount = amount;
		this.date = date;
		this.notes = notes;
	}
	public userTakeout() {
		super();
	}
	
}
