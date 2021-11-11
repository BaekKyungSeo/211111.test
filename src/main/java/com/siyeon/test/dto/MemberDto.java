package com.siyeon.test.dto;

import java.sql.Date;

public class MemberDto {
	
	private int sId;
	private String sName;
	private String sPhone;
	private String sAddr;
	private Date sDate;
	
	public MemberDto() {
		super();
		// TODO Auto-generated constructor stub
	}
	
	
	public MemberDto(int sId, String sName, String sPhone, String sAddr, Date sDate) {
		super();
		this.sId = sId;
		this.sName = sName;
		this.sPhone = sPhone;
		this.sAddr = sAddr;
		this.sDate = sDate;
	}


	public int getsId() {
		return sId;
	}


	public void setsId(int sId) {
		this.sId = sId;
	}


	public String getsName() {
		return sName;
	}


	public void setsName(String sName) {
		this.sName = sName;
	}


	public String getsPhone() {
		return sPhone;
	}


	public void setsPhone(String sPhone) {
		this.sPhone = sPhone;
	}


	public String getsAddr() {
		return sAddr;
	}


	public void setsAddr(String sAddr) {
		this.sAddr = sAddr;
	}


	public Date getsDate() {
		return sDate;
	}


	public void setsDate(Date sDate) {
		this.sDate = sDate;
	}

		
}
