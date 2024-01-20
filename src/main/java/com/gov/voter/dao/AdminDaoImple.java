package com.gov.voter.dao;

import java.util.List;
import java.util.Optional;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Component;

import com.gov.voter.entity.Admin;
import com.gov.voter.repository.AdminRepository;

@Component
public class AdminDaoImple implements AdminDao
{
	@Autowired
	private AdminRepository repo;
	@Override
	public boolean validateAdmin(String email, String password) 
	{
		Optional<Admin> opt = repo.findById(email);
		if(opt.isPresent())
		{
			Admin admin=opt.get();
			if(admin.getPassword().equals(password))
				return true;
		}
		return false;
	}
	@Override
	public Admin getAdmin(String email) 
	{		
		return repo.findById(email).get();
	}
	@Override
	public List<Admin> getAllAdmins() 
	{
		return repo.findAll();
	}
}
