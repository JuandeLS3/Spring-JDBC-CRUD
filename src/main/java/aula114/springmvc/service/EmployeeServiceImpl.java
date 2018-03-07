package aula114.springmvc.service;

import org.springframework.jdbc.core.JdbcTemplate;
import org.springframework.jdbc.core.BeanPropertyRowMapper;


import java.util.List;
import java.util.ArrayList;
import java.util.Set;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;
import org.springframework.web.bind.annotation.ResponseBody;

import aula114.springmvc.domain.Contact;

@Service
public class EmployeeServiceImpl implements EmployeeService {
    @Autowired
    private JdbcTemplate jdbcTemplate;

	@Override
	public List<Contact> listAllEmployee() {
           List<Contact> laList = new ArrayList<Contact>();
           String sql0 = "select name,telephone,address from contact";
           laList = jdbcTemplate.query(sql0, new BeanPropertyRowMapper<Contact>(Contact.class));
           return laList;
	}
	
	public List<Contact> listUserData(String id) {
		List<Contact> laList = new ArrayList<Contact>();
        String sql0 = "select name,email,telephone,address from contact where name='" + id + "'";
        laList = jdbcTemplate.query(sql0, new BeanPropertyRowMapper<Contact>(Contact.class));
        return laList;
	}
	
	public void add(Contact contact) {
		// String sql = "insert into contact (name, email, address, telephone) values ('" + contact.getName() + "', '" + contact.getEmail() + "', '" + contact.getAddress() +
        String sql = "insert into contact (name, email, address, telephone) values (?, ?, ?, ?)";
        System.out.println("Nombreeeeeeee " + contact.getName());
        jdbcTemplate.update(sql, contact.getName(), contact.getEmail(), contact.getAddress(), contact.getTelephone());
	}
	
	public void delete(String name) {
        String sql = "delete from contact where name = ?";
        jdbcTemplate.update(sql, name);
	}
	
}
