package com.library.controller;

import com.library.dto.CreateDto;
import com.library.dto.UserDto;
import com.library.model.entity.*;
import com.library.service.AddressService;
import com.library.service.Impl.UserServiceImpl;
import com.library.service.UserBookService;
import com.library.service.UserService;
import lombok.RequiredArgsConstructor;
import org.springframework.http.ResponseEntity;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.*;

import javax.servlet.http.HttpSession;
import java.util.Calendar;
import java.util.List;

@Controller
@RequiredArgsConstructor
public class UserController {

    private final UserService service;
    private final UserBookService userBookService;
    private final AddressService addressService;


    @GetMapping(value = "/users")
    public String users(Model model) {
        List<User> usersList = service.findAll();
        model.addAttribute("users", usersList);
        return "users";
    }

    @GetMapping(value = "/userBooks")
    public String usersBook(Model model) {
        List<UserBook> usersBooks = userBookService.findAll();
        model.addAttribute("userBooks", usersBooks);
        return "userBooks";
    }


    @GetMapping(value = "/usersDetails")
    public String getUser(@RequestParam Integer id, Model model) {
        List<Book> books = userBookService.getBooksByUser(id);
        model.addAttribute("user", service.getUser(id));
        model.addAttribute("books", books);
        return "usersDetails";
    }

    @GetMapping(value = "/UserDelete")
    public String deleteUser(@RequestParam Integer id, Model model) {
        model.addAttribute("user", service.getUser(id));
        return "userDelete";
    }

    @GetMapping("/delete")
    public String delete(@RequestParam Integer id, Model model) {
        service.delete(id);
        List<User> usersList = service.findAll();
        model.addAttribute("users", usersList);
        return "users";
    }

    @GetMapping(value = "/showCreateUser")
    public String showCreateUser(Model model) {
        List<Address> address = addressService.findAll();
        List<Address> addressList = addressService.findAll();
        model.addAttribute("registration", new UserDto());
        model.addAttribute("addressList", addressList);
        return "registration";
    }

    @PostMapping(value = "/registration")
    public String registration(@ModelAttribute(value = "registration") UserDto userDto, Model model) {
        service.save(userDto);
        var users = service.findAll();
        model.addAttribute("users", users);
        return "users";
    }

    @PostMapping(value = "/authorization")
    public String authorization(@ModelAttribute(value = "registration") UserDto userDto, Model model) {
        var users = service.findByQuery(userDto.getName());
        model.addAttribute("users", users);
        return "index";
    }

    @GetMapping(value = "/findUsers")
    public String findUser(@RequestParam String name, Model model) {
        List<User> users = service.findByQueryList(name);
        model.addAttribute("users", users);
        return "users";
    }


}
