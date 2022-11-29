package com.library.controller;

import com.library.model.entity.Address;
import com.library.model.entity.User;
import com.library.service.AddressService;
import com.library.service.UserService;
import lombok.RequiredArgsConstructor;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.GetMapping;

import java.util.List;

@Controller
@RequiredArgsConstructor
public class AddressController {
    private final AddressService service;

    @GetMapping(value = "/address")
    public String address(Model model) {
        List<Address> address = service.findAll();
        model.addAttribute("address", address);
        return "address";
    }

}
