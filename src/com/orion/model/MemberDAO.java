package com.orion.model;

import java.util.Date;

public class MemberDAO {
	private String m_id;
	private String m_pw;
	private String m_name;
	private int m_birth1;
	private int m_birth2;
	private int m_birth3;
	private String m_email;
	private String m_tel;
	private String m_zipcode;
	private String m_address1;
	private String m_address2;
	private Date regdate;
	public String getM_id() {
		return m_id;
	}
	public void setM_id(String m_id) {
		this.m_id = m_id;
	}
	public String getM_pw() {
		return m_pw;
	}
	public void setM_pw(String m_pw) {
		this.m_pw = m_pw;
	}
	public String getM_name() {
		return m_name;
	}
	public void setM_name(String m_name) {
		this.m_name = m_name;
	}
	public int getM_birth1() {
		return m_birth1;
	}
	public void setM_birth1(int m_birth1) {
		this.m_birth1 = m_birth1;
	}
	public int getM_birth2() {
		return m_birth2;
	}
	public void setM_birth2(int m_birth2) {
		this.m_birth2 = m_birth2;
	}
	public int getM_birth3() {
		return m_birth3;
	}
	public void setM_birth3(int m_birth3) {
		this.m_birth3 = m_birth3;
	}
	public String getM_email() {
		return m_email;
	}
	public void setM_email(String m_email) {
		this.m_email = m_email;
	}
	public String getM_tel() {
		return m_tel;
	}
	public void setM_tel(String m_tel) {
		this.m_tel = m_tel;
	}
	public String getM_zipcode() {
		return m_zipcode;
	}
	public void setM_zipcode(String m_zipcode) {
		this.m_zipcode = m_zipcode;
	}
	public String getM_address1() {
		return m_address1;
	}
	public void setM_address1(String m_address1) {
		this.m_address1 = m_address1;
	}
	public String getM_address2() {
		return m_address2;
	}
	public void setM_address2(String m_address2) {
		this.m_address2 = m_address2;
	}
	public Date getRegdate() {
		return regdate;
	}
	public void setRegdate(Date regdate) {
		this.regdate = regdate;
	}
}
