package org.account.entity;

public class Account {
    private String name;
    private String email;
    private String password;
    /*
    private String truename;
    private String sex;
    private String qq;
    private String birthday;
    private byte[] img;*/

    public Account() {
    	this.name = null;
		this.email = null;
		this.password = null;
    }
    public Account(String name,  String password,String email) {
    	this.name = name;
		this.email = email;
		this.password = password;
    }
	public String getName() {
        return name;
    }

    public void setName(String name) {
        this.name = name;
    }

    public String getEmail() {
        return email;
    }

    public void setEmail(String email) {
        this.email = email;
    }

    public String getPassword() {
        return password;
    }

    public void setPassword(String password) {
        this.password = password;
    }
    
    public String toString() {
    	return name+"---"+password+"----"+email;
    }




}
