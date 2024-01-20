package com.gov.voter.repository;

import org.springframework.data.jpa.repository.JpaRepository;

import com.gov.voter.entity.Voter;

public interface VoterRepository extends JpaRepository<Voter, String> {

}
