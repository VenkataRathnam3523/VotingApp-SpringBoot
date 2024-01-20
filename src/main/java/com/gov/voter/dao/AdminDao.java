package com.gov.voter.dao;

import java.util.List;

import com.gov.voter.entity.Admin;

public interface AdminDao
{
	public boolean validateAdmin(String email,String password);

	public Admin getAdmin(String email);

	public List<Admin> getAllAdmins();
}
