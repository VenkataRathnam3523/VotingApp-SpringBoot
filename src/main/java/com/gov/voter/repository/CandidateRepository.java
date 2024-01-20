package com.gov.voter.repository;

import org.springframework.data.jpa.repository.JpaRepository;

import com.gov.voter.entity.Candidate;

public interface CandidateRepository extends JpaRepository<Candidate, String> {

}
