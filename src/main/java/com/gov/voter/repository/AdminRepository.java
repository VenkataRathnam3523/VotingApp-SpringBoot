package com.gov.voter.repository;

import org.springframework.data.jpa.repository.JpaRepository;

import com.gov.voter.entity.Admin;

public interface AdminRepository extends JpaRepository<Admin,String>
{

}
