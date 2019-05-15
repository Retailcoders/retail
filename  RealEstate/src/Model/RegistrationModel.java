package Model;

import java.text.SimpleDateFormat;

import java.sql.Date;

import java.sql.*;

public class RegistrationModel

{

 

	String firstName;

	String lastName;

	long mobile;

	String idProof;

    String dob;

	public String getFirstName() {
		return firstName;
	}

	public void setFirstName(String firstName) {
		this.firstName = firstName;
	}

	public String getLastName() {
		return lastName;
	}

	public void setLastName(String lastName) {
		this.lastName = lastName;
	}

	public long getMobile() {
		return mobile;
	}

	public void setMobile(long mobile) {
		this.mobile = mobile;
	}

	public String getIdProof() {
		return idProof;
	}

	public void setIdProof(String idProof) {
		this.idProof = idProof;
	}

	public String getDob() {
		return dob;
	}

	public void setDob(String dob) {
		this.dob = dob;
	}

	public RegistrationModel(String firstName, String lastName, long mobile, String idProof, String dob) {
		super();
		this.firstName = firstName;
		this.lastName = lastName;
		this.mobile = mobile;
		this.idProof = idProof;
		this.dob = dob;
	}

	

}