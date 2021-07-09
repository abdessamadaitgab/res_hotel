package com.bean;

public class ClientBean {
int id;
String Name,Cin,Email,Password,Phone;
public ClientBean() {
	
}
public ClientBean(String name, String cin, String email, String password, String phone) {
	super();
	Name = name;
	Cin = cin;
	Email = email;
	Password = password;
	Phone = phone;
}
public ClientBean(String name, String cin, String email, String phone) {
	super();
	Name = name;
	Cin = cin;
	Email = email;
	Phone = phone;
}
public ClientBean(int id, String name, String cin, String email, String password, String phone) {
	super();
	this.id = id;
	Name = name;
	Cin = cin;
	Email = email;
	Password = password;
	Phone = phone;
}
public int getId() {
	return id;
}
public void setId(int id) {
	this.id = id;
}
public String getName() {
	return Name;
}
public void setName(String name) {
	Name = name;
}
public String getCin() {
	return Cin;
}
public void setCin(String cin) {
	Cin = cin;
}
public String getEmail() {
	return Email;
}
public void setEmail(String email) {
	Email = email;
}
public String getPhone() {
	return Phone;
}
public void setPhone(String phone) {
	Phone = phone;
}
public String getPassword() {
	return Password;
}
public void setPassword(String password) {
	Password = password;
}
@Override
public String toString() {
	return "ClientBean [Name=" + Name + ", Cin=" + Cin + ", Email=" + Email + ", Password=" + Password + ", Phone="
			+ Phone + "]";
}

}
