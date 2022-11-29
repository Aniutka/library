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
    @GetMapping(value = "/usersDetails")
    public String getUser(@RequestParam Integer id, Model model) {
        var userBook= userBookService.getUserBook(id);
        List<Book> listBooks=userBookService.findListBook(id);
        model.addAttribute("userBook", userBook);
        model.addAttribute("listBooks", listBooks);
        return "usersDetails";
    }



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


}
