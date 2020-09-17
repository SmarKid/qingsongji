package cn.edu.wic.qingsongji.model;

public class SigninModel
{
	private String username;
	private String password;
	private String telnum;
	private String email;
	private String sex;
	
	public String getUsername() {
		return username;
	}

	public void setUsername(String username) {
		this.username = username;
	}

	public String getPassword() {
		return password;
	}

	public void setPassword(String password) {
		this.password = password;
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

	public String getSex() {
		return sex;
	}

	public void setSex(String sex) {
		this.sex = sex;
	}

	public SigninModel(String username, String password, String telnum, String email, String sex) {
		super();
		this.username = username;
		this.password = password;
		this.telnum = telnum;
		this.email = email;
		this.sex = sex;
	}
	public SigninModel()
	{
		super();
	}
	
}
