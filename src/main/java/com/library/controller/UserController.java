package com.library.controller;

import com.library.dto.CreateDto;
import com.library.dto.UserDto;
import com.library.model.entity.Author;
import com.library.model.entity.Book;
import com.library.model.entity.User;
import com.library.model.entity.UserBook;
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

    @GetMapping(value = "/usersBooks2")
    public String usersBook2(@RequestParam Integer id, Model model) {
        List<UserBook> userBooks=userBookService.findAll1();
        model.addAttribute("userBooks1", userBooks);
        return "userBooks1";
    }

//    @GetMapping(value = "/usersBooks1")
//    public String usersBook2(@RequestParam Integer id, Model model) {
//        List<UserBook> userBooks=userBookService.findAll1();
//        model.addAttribute("userBooks1", userBooks);
//        return "userBooks1";
//    }

    @GetMapping(value = "/usersDetails")
    public String getUser(@RequestParam Integer id, Model model) {
        List<Book> books = userBookService.getBooksByUser(id);
       // List<Book> books1 = service.getBooks(id);
       model.addAttribute("user", service.getUser(id));
        model.addAttribute("books", books);
      //  var user= service.getUser(id);
        return "usersDetails";
    }

    @GetMapping(value = "/UserDelete")
    public String deleteUser(@RequestParam Integer id, Model model) {
        model.addAttribute("user", service.getUser(id));
        return "userDelete";
    }

    @GetMapping("/delete")
    public String delete(@RequestParam Integer id,Model model) {
        service.delete(id);
        List<User> usersList = service.findAll();
        model.addAttribute("users", usersList);
        return "users";
    }


//
//    @GetMapping(value = "/usersDetails")
//    public String getUser(@RequestParam Integer id, Model model) {
//        var user= service.findById(id);
//        List<Book> listBooks=userBookService.findListBook(id);
//        model.addAttribute("user", user);
//        model.addAttribute("listBooks", listBooks);
//        return "usersDetails";
//    }



    @GetMapping(value = "/showCreateUser")
    public String showCreateUser(Model model) {
        model.addAttribute("registration", new UserDto());
        return "registration";
    }

    @PostMapping(value = "/registration")
    public String registration(@ModelAttribute(value = "registration") UserDto userDto, Model model) {
        service.save(userDto);
        var users = service.findAll();
        model.addAttribute("users",users);
        return "index";
    }


    @PostMapping(value = "/authorization")
    public String authorization(@ModelAttribute(value = "registration") UserDto userDto, Model model) {
        var users = service.findByQuery(userDto.getName());
        model.addAttribute("users",users);
        return "index";
    }

    @GetMapping(value = "/findUsers")
    public String findUser(@RequestParam String name,Model model) {
//        var user=service.findByQuery(name);
        List<User> users=service.findByQueryList(name);
        model.addAttribute("users", users);
        // return "findBook";
        return "users";
    }











}
