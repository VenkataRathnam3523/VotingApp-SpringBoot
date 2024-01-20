package com.gov.voter.dao;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Component;

import com.gov.voter.entity.Candidate;
import com.gov.voter.repository.CandidateRepository;
@Component
public class CandidateDaoImple implements CandidateDao {

	@Autowired
	private CandidateRepository candRepo;
	@Override
	public void addNewCandidate(Candidate cand) 
	{
		candRepo.save(cand);
	}
	@Override
	public List<Candidate> getAllCandidates() 
	{
		return candRepo.findAll();
	}
	@Override
	public void doVoting(String candidate) 
	{
		Candidate candi=candRepo.findById(candidate).get();
		candi.setVotes(candi.getVotes()+1);
		candRepo.save(candi);
	}
	@Override
	public Candidate getCandidate(String candidate) 
	{
		Candidate candi=candRepo.findById(candidate).get();
		return candi;
	}
}