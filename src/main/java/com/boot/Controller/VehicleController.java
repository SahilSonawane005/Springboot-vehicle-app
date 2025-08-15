package com.boot.Controller;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.ModelAttribute;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.bind.annotation.ResponseBody;
import org.springframework.web.bind.annotation.RestController;

import com.boot.Model.Vehicle;
import com.boot.Service.VehicleService;

@Controller
public class VehicleController {

	@RequestMapping("/home")
	public String gotoHome() {
		return "home";
	}

	@Autowired
	private VehicleService vserv;
	
	@RequestMapping("/vehicle/create")
	public String addVForm() {
		return "addForm";
	}

	@RequestMapping("/add")
	@ResponseBody
	public String addData(@ModelAttribute Vehicle v ) {
		vserv.insert(v);
		return "Data is added";
	}
	
	@RequestMapping("/vehicle/viewOne")
	public String getVForm() {
		return "viewForm";
	}
	
	@RequestMapping("/viewOne")
	public String getV(@RequestParam("vid") int id,Model m) {
		 Vehicle v = vserv.getSingle(id);
		m.addAttribute("data",v);
		return "viewVehicle";
	}
	
	@RequestMapping("/vehicle/viewAll")
	public String getAllV(Model m) {
		List<Vehicle>vlist = vserv.getAll();
		m.addAttribute("listofdata",vlist);
		return "allV";
	}
	
	
	@RequestMapping("/vehicle/update")
	public String updateForm() {
		return "uForm";
	}
	
	
	@RequestMapping("/update")
	@ResponseBody
	public String update(@RequestParam("vid")int id,@RequestParam("vname")String name,@RequestParam("vprice")double price ) {
		vserv.update(id, name, price);
		
		return "Data Updated Succesfully";
	}
	
	@RequestMapping("/vehicle/delete")
	public String delForm() {
		return "dForm";
	}
	
	@ResponseBody
	@RequestMapping("/del")
	public String getV(@RequestParam("vid") int id) {
		vserv.delete(id);
		return "delete succesfully ";
	}
	
	
	
}











