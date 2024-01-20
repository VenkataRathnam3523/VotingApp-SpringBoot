package com.gov.voter.controller;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestMapping;

import com.gov.voter.dao.AdminDao;
import com.gov.voter.dao.CandidateDao;
import com.gov.voter.entity.Admin;
import com.gov.voter.entity.Candidate;

@Controller
public class AdminController
{
	@Autowired
	private AdminDao dao;
	@Autowired
	private CandidateDao cDao;
	@RequestMapping("/adminLogin")
	public String adminLogin(String email,String password,Model model)
	{
		if(dao.validateAdmin(email, password))
		{
			Admin ad=dao.getAdmin(email);
			List<Candidate> ls = cDao.getAllCandidates();
			model.addAttribute("listOfCan", ls);
			model.addAttribute("admin",ad);
			return "AdminHome";
		}
		else
		{
			model.addAttribute("LoginStatus","Invalid credantials....!");
			return "AdminSignIn";
		}
	}
	@RequestMapping("/viewAllAdmins")
	public String viewAllAdmins(Model model)
	{
		List<Admin> adList=dao.getAllAdmins();
		model.addAttribute("allAdmins", adList);
		return "DisplayAdmins";
		
	}
}
