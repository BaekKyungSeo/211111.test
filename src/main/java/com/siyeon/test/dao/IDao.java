package com.siyeon.test.dao;

import java.util.ArrayList;

import com.siyeon.test.dto.MemberDto;

public interface IDao {
	
	public ArrayList<MemberDto> listDao();
	public void mbDao(String sName, String sPhone, String sAddr);
	public void delDao(String sId);
	public void modifyDao(String sName, String sPhone, String sAddr);
	public MemberDto  modifyFormDao(String sId, String sName, String sPhone, String sAddr);

}
