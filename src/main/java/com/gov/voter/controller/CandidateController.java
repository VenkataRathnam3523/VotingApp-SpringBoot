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
public class CandidateController 
{
	@Autowired
	private CandidateDao dao;
	@RequestMapping("/addCandidate")
	public String addCandidate(Candidate cand,Model model)
	{
		String message="your application is rejected....!!! beacause ";
		if(cand.getAge()<24)
		{
			message+="your age is less than 24";
		}
		else if(cand.getMonthlyincome()>10000)
		{
			message+="your monthly income is more than 10000";
		}
		else if(cand.getYearlyincome()>120000)
		{
			message+="your yearly income is more than 120000";
		}
		else if(cand.getTotalproperty()>10000000)
		{
			message+="your total income is more than 10000000";
		}
		else if(cand.getCriminalbackground().equalsIgnoreCase("yes"))
		{
			message+="you have criminal background";
		}
		else
		{
			dao.addNewCandidate(cand);
			message="Application approved..!!!";
			model.addAttribute("check", true);
			model.addAttribute("status", message);
			return "ApplyCandidate";
		}
		model.addAttribute("check", false);
		model.addAttribute("status", message);
		return "ApplyCandidate";
	}
	@Autowired
	private VoterDao vDao;
	@RequestMapping("/addVote")
	public String addVote(String voter, String candidate, Model model)
	{
		dao.doVoting(candidate);
		vDao.changeStatus(voter);
		Candidate ca=dao.getCandidate(candidate);
		Voter v=vDao.getVoter(voter);
		model.addAttribute("name", ca.getFirstname());
		model.addAttribute("voter", v);
		model.addAttribute("ListOfCan", dao.getAllCandidates());
		return "VoterHome";
	}
	@RequestMapping("/viewAllcandidates")
	public String viewAllcandidates(Model model)
	{
		List<Candidate> candList=dao.getAllCandidates();
		model.addAttribute("allCandidates", candList);
		return "DisplayCandidates";
	}
}
