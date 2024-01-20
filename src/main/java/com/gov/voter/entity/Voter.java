package com.gov.voter.entity;

import jakarta.persistence.Entity;
import jakarta.persistence.GeneratedValue;
import jakarta.persistence.GenerationType;
import jakarta.persistence.Id;
import lombok.Data;
import lombok.NoArgsConstructor;
import lombok.ToString;

@Entity
@Data
@ToString
@NoArgsConstructor
public class Voter
{
	private String firstname;
	private String lastname;
	private String dob;
	private String gender;
	private String aadhar;
	private String pan;
	@Id
	private String email;
	private String mobileno;
	private String address;
	private String username;
	private String password;
	@GeneratedValue(strategy = GenerationType.AUTO)
	private int id;
	private String status;
}
