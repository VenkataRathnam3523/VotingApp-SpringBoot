package com.gov.voter.controller;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestMapping;

import com.gov.voter.dao.CandidateDao;
import com.gov.voter.dao.VoterDao;
import com.gov.voter.entity.Candidate;
import com.gov.voter.entity.Voter;

@Controller
public class VotingController
{
	@Autowired
	private VoterDao voterDao;
	@RequestMapping("/displayHome")
	public String displayHome()
	{
		return "Home";
	}
	@RequestMapping("/signUp")
	public String signUp(Voter voter,Model model)
	{
		voterDao.addVoter(voter);
		model.addAttribute("message","Registration Successfull....");
		return "Registration";
	}
	@Autowired
	private CandidateDao canDao;
	@RequestMapping("/voterLogin")
	public String voterLogin(String email,String password,Model model)
	{
		if(voterDao.validateVoter(email,password))
		{
			Voter vtr=voterDao.getVoter(email);
			List<Candidate> ls=canDao.getAllCandidates();
			model.addAttribute("voter", vtr);
			model.addAttribute("ListOfCan", ls);
			return "VoterHome";
		}
		else
		{
			model.addAttribute("LoginStatus", "invalid credantials.....!");
			return "SignIn";
		}
	}
	@RequestMapping("/viewAllVoters")
	public String viewAllVoters(Model model)
	{
		List<Voter> vList=voterDao.getAllVoters();
		model.addAttribute("voterList", vList);
		return "DisplayVoters";
	}
}

