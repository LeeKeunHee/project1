package com.orion.model;

import java.util.Date;

public class CsDAO {
	private int cs_num;
	private String cs_id;
	private String cs_name;
	private String cs_title;
	private String cs_sub;
	private Date cs_date;
	private String cs_file;
	private String num;
	public String getNum() {
		return num;
	}
	public void setNum(String num) {
		this.num = num;
	}
	public int getCs_num() {
		return cs_num;
	}
	public void setCs_num(int cs_num) {
		this.cs_num = cs_num;
	}
	public String getCs_id() {
		return cs_id;
	}
	public void setCs_id(String cs_id) {
		this.cs_id = cs_id;
	}
	public String getCs_name() {
		return cs_name;
	}
	public void setCs_name(String cs_name) {
		this.cs_name = cs_name;
	}
	public String getCs_title() {
		return cs_title;
	}
	public void setCs_title(String cs_title) {
		this.cs_title = cs_title;
	}
	public String getCs_sub() {
		return cs_sub;
	}
	public void setCs_sub(String cs_sub) {
		this.cs_sub = cs_sub;
	}
	public Date getCs_date() {
		return cs_date;
	}
	public void setCs_date(Date cs_date) {
		this.cs_date = cs_date;
	}
	public String getCs_file() {
		return cs_file;
	}
	public void setCs_file(String cs_file) {
		this.cs_file = cs_file;
	}
}
