package com.boot.Service;

import java.util.List;
import java.util.Optional;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import com.boot.Model.Vehicle;
import com.boot.Repository.VehicleRepository;

@Service
public class VehicleService {
	
	@Autowired
	private VehicleRepository vrepo;
	
	public void insert(Vehicle v) {
		vrepo.save(v);
	}
	
	
	//use of optional handles if value is not present
	public Vehicle getSingle(int id) {
		Optional<Vehicle> op= vrepo.findById(id);
		Vehicle v= 	op.get();
		return v;
	} 

	public List<Vehicle> getAll(){
		List<Vehicle> list = vrepo.findAll();
		return list;
	}
	
	
	public void update(int id,String name ,double price) {
		Optional<Vehicle> op = vrepo.findById(id);
		if (op.isPresent()) {
			Vehicle v =op.get();
			v.setVname(name);
			v.setVprice(price);
			vrepo.save(v);
		}
		
	}
	
	public void delete(int id) {
		Optional<Vehicle> op= vrepo.findById(id);
		if (op.isPresent()) {
			Vehicle v =op.get();
			vrepo.delete(v);
//			return "deleted";
		}
//		return "data not present";
		
	}
	
	
}
