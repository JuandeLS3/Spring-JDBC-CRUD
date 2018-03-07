package aula114.springmvc.controller;

import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.ModelAttribute;
import org.springframework.web.bind.annotation.PathVariable;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.bind.annotation.ResponseBody;
import org.springframework.beans.factory.annotation.Autowired;
import aula114.springmvc.service.EmployeeService;
import redis.clients.jedis.Jedis;
import aula114.springmvc.domain.Contact;

import java.util.List;
import java.util.ArrayList;

@Controller
public class EmployeeController {

  @Autowired
  EmployeeService employeeService;

  @RequestMapping("/employee")
  public String consultaEmployee(Model model) {
     List<Contact> list = new ArrayList<Contact>();
     // Lista con todos los contactos
     list = employeeService.listAllEmployee();
     model.addAttribute("list", list);
     System.out.println("tttttttttttt");
     System.out.println(list.get(0).getAddress());
     System.out.println("tttttttttttt");
     return "consulta";
  }
  
  @RequestMapping(value="/show/{id}")
  public String mostrarFicha(Model model, @PathVariable("id") String id){
	  model.addAttribute("n", id);
	  System.out.println(id);
	  List<Contact> datos = new ArrayList<Contact>();
	  datos = employeeService.listUserData(id);
	  System.out.println(datos.get(0).getEmail());
	  model.addAttribute("datos", datos);
  	return "mostrar";
  }
  
  @RequestMapping(value="/add")
  public void addContact(){
  }
  
  @RequestMapping(value="/add", method=RequestMethod.POST)
  public String add(@ModelAttribute Contact contact) {
  	employeeService.add(contact);
  	System.out.println("Contacto añadido");
  	return "redirect:/employee";
  }
  
  @RequestMapping(value="/delete/{id}")
  public String delete(Model model, @PathVariable("id") String id){
	  model.addAttribute("n", id);
	  System.out.println("BORRAR A " + id);
	  employeeService.delete(id); // Ejecuta la orden
  	return "redirect:/employee";
  }
  
  // Carga la información del usuario al que se va a hacer update.
  @RequestMapping(value="/update/{id}")
  public String cargarUpdate(Model model, @PathVariable("id") String id){
	  model.addAttribute("n", id);
	  List<Contact> datos = new ArrayList<Contact>();
	  datos = employeeService.listUserData(id);
	  model.addAttribute("datos", datos);
	  return "update";
  }
  
  
  @RequestMapping(value="/update/{id}", method=RequestMethod.POST)
  public String update(@ModelAttribute Contact contact){ 
	  employeeService.update(contact);
	  //System.out.println("Contacto actualizado: " + contact.getEmail() +" -------" + contact.getTelephone());
	  return "redirect:/employee";
  }
}

