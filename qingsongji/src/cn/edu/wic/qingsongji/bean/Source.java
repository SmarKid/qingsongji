package cn.edu.wic.qingsongji.bean;

public class Source {
	private Integer id;
	private String source;
	public Integer getId() {
		return id;
	}
	public void setId(Integer id) {
		this.id = id;
	}
	public String getSource() {
		return source;
	}
	public void setSource(String source) {
		this.source = source;
	}
	public Source(Integer id, String source) {
		super();
		this.id = id;
		this.source = source;
	}
	public Source() {
		super();
	}
	@Override
	public String toString() {
		// TODO Auto-generated method stub
		return String.format("%d,%s", id, source);
	}
}
