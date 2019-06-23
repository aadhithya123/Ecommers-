package com.ecomm.modal;

import javax.persistence.Column;
import javax.persistence.Entity;
import javax.persistence.GeneratedValue;
import javax.persistence.GenerationType;
import javax.persistence.Id;
import javax.persistence.Table;

@Entity
public class User {
	@Id
	@GeneratedValue(strategy =GenerationType.IDENTITY)
	private int userid;
	@Column(unique=true)
	private String username;
	private String password;
	private boolean enabled;
	private String useremail;
	private String useraddress;
	private Long userphone;
    
	public int getUserid() {
		return userid;
	}
	public void setUserid(int userid) {
		this.userid = userid;
	}
	public String getUsername() {
		return username;
	}
	public void setUsername(String username) {
		this.username = username;
	}
	
	public String getpassword() {
		return password;
	}
	public void setpassword(String password) {
		this.password = password;
	}
	public boolean isEnabled() {
		return enabled;
	}
	public void setEnabled(boolean enabled) {
		this.enabled = enabled;
	}
	public String getPassword() {
		return password;
	}
	public void setPassword(String password) {
		this.password = password;
	}
	public String getUseremail() {
		return useremail;
	}
	public void setUseremail(String useremail) {
		this.useremail = useremail;
	}
	
	  public String getUseraddress() {
		  return useraddress; 
		  }
	  public void setUseraddress(String useraddress) { 
		  this.useraddress = useraddress;
		  }
	public Long getUserphone() {
		return userphone;
	}
	public void setUserphone(Long userphone) {
		this.userphone = userphone;
	}} 