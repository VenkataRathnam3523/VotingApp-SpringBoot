package com.gov.voter.dao;

import java.util.List;

import com.gov.voter.entity.Candidate;

public interface CandidateDao 
{
	public void addNewCandidate(Candidate cand);

	public List<Candidate> getAllCandidates();

	public void doVoting(String candidate);

	public Candidate getCandidate(String candidate);
}