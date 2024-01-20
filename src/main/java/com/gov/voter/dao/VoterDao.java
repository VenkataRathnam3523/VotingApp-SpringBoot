package com.gov.voter.dao;

import java.util.List;

import com.gov.voter.entity.Voter;

public interface VoterDao 
{
	public void addVoter(Voter voter);

	public boolean validateVoter(String email, String password);
	
	public Voter getVoter(String email);

	public void changeStatus(String voter);

	public List<Voter> getAllVoters();
}
