package cn.edu.wic.qingsongji.bean;

public class Usefor {
	private Integer id;
	private String usefor;
	public Integer getId() {
		return id;
	}
	public void setId(Integer id) {
		this.id = id;
	}
	public String getUsefor() {
		return usefor;
	}
	public void setUsefor(String usefor) {
		this.usefor = usefor;
	}
	public Usefor(Integer id, String usefor) {
		super();
		this.id = id;
		this.usefor = usefor;
	}
	public Usefor() {
		super();
	}
}
