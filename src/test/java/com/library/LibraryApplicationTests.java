package com.library;

import com.library.model.entity.Address;
import com.library.model.entity.Location;
import com.library.model.entity.User;
import com.library.service.UserService;
import org.junit.jupiter.api.Test;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.boot.test.context.SpringBootTest;
import org.springframework.transaction.annotation.Transactional;

import java.sql.Date;
import java.time.LocalDate;
import java.util.Collection;

import static org.assertj.core.api.Assertions.assertThat;

@SpringBootTest
class LibraryApplicationTests {
	@Autowired
	protected UserService userService;


	@Test
	void contextLoads() {
	}

//	@Test
//	@Transactional
//	public void saveUser() {
//		User user = new User();
//		Address address=new Address();
//		address.setStreet("gghgh");
//		address.setBuilding("hhjh");
//		user.setName("Nika");
//		user.setDate_birth(Date.valueOf(LocalDate.now()));
//		user.setDate_registration(Date.valueOf(LocalDate.now()));
//		user.setPlace_work("gghgh");
//		user.setAddress(address);
//		userService.saveUser(user);
//
//	}




}
