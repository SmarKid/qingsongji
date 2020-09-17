package cn.edu.wic.qingsongji.bean;

public class User {
	private Integer id;
	private String  username;
	private String sex;
	private String telnum;
	private String email;
	private Integer avecon;
	private String notes;
	public String getNotes() {
		return notes;
	}
	public void setNotes(String notes) {
		this.notes = notes;
	}
	public Integer getAvecon()
	{
		return avecon;
	}
	public void setAvecon(Integer avecon)
	{
		this.avecon = avecon;
	}
	public Integer getId() {
		return id;
	}
	public void setId(Integer id) {
		this.id = id;
	}
	public String getUsername() {
		return username;
	}
	public void setUsername(String username) {
		this.username = username;
	}
	public String getSex() {
		return sex;
	}
	public void setSex(String sex) {
		this.sex = sex;
	}
	public String getTelnum() {
		return telnum;
	}
	public void setTelnum(String telnum) {
		this.telnum = telnum;
	}
	public String getEmail() {
		return email;
	}
	public void setEmail(String email) {
		this.email = email;
	}
	public User(Integer id, String username, String sex, String telnum, String email, Integer avecon, String notes) {
		super();
		this.id = id;
		this.username = username;
		this.sex = sex;
		this.telnum = telnum;
		this.email = email;
		this.avecon = avecon;
		this.notes = notes;
	}
	public User() {
		super();
	}
	@Override
	public String toString() {
		return String.format("%d,%s,%s,%s,%s,%d,%s", id,username,sex,telnum,email,avecon,notes);
	}
	
}
