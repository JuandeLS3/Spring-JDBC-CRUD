package aula114.springmvc.service;

import java.util.List;

import aula114.springmvc.domain.Contact;

public interface EmployeeService {

	public List<Contact> listAllEmployee();
	public List<Contact> listUserData(String id);
	public void add(Contact contact);
	public void delete(String name);
	public void update(Contact contact);
}
