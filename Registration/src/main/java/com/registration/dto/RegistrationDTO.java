package com.registration.dto;

import lombok.Data;

@Data
public class RegistrationDTO {
	
	private String FullName;
	
	private String UserName;
	
	private int PhoneNumber;
	
	private String Email;
	
	private String Password;
	
	private String ConfirmPassword;
	
	private String Gender;
	

}
