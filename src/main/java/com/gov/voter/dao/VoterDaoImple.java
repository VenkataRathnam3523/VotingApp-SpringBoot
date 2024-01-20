package com.gov.voter.dao;

import java.util.List;
import java.util.Optional;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Component;

import com.gov.voter.entity.Voter;
import com.gov.voter.repository.VoterRepository;
@Component
public class VoterDaoImple implements VoterDao 
{
	@Autowired
	private VoterRepository voterRepo;
	@Override
	public void addVoter(Voter voter) 
	{
		voter.setStatus("not voted");
		voterRepo.save(voter);
	}
	@Override
	public boolean validateVoter(String email, String password) 
	{
		Optional<Voter> findById = voterRepo.findById(email);
		if(findById.isPresent())
		{
			Voter voter=findById.get();
			if(voter.getPassword().equals(password))
				return true;
		}
		return false;
	}
	@Override
	public Voter getVoter(String email) 
	{
		Optional<Voter> opt = voterRepo.findById(email);
		if(opt.isPresent())
			return opt.get();
		return null;
	}
	@Override
	public void changeStatus(String voter) 
	{
		Voter voter2 = voterRepo.findById(voter).get();
		voter2.setStatus("voted");
		voterRepo.save(voter2);
	}
	@Override
	public List<Voter> getAllVoters() 
	{
		return voterRepo.findAll();
	}
	
}