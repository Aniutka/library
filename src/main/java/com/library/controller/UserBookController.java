package com.library.controller;

import com.library.dto.CreateDto;
import com.library.model.entity.Author;
import com.library.model.entity.Location;
import com.library.model.entity.User;
import com.library.model.entity.UserBook;
import com.library.service.BookService;
import com.library.service.LocationService;
import com.library.service.UserBookService;
import com.library.service.UserService;
import lombok.RequiredArgsConstructor;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.ModelAttribute;
import org.springframework.web.bind.annotation.PostMapping;
import org.springframework.web.bind.annotation.RequestParam;

import java.sql.Date;
import java.util.List;

@Controller
@RequiredArgsConstructor

public class UserBookController {
    private final UserBookService userBookService;
    private final UserService userService;
    private final BookService bookService;
    private final LocationService locationService;

    @GetMapping(value = "/showorderBook")
    public String orderBook(@RequestParam Integer id, Model model) {
        //  model.addAttribute("orderBook", new UserBook());
        model.addAttribute("id", id);
        return "orderBook";
    }

    @GetMapping(value = "/orderBook")
    public String creatOrderBook(@RequestParam Integer idBook, @RequestParam Integer idUser, @RequestParam Integer location, @RequestParam Date data, Model model) {
        var userBook = new UserBook();
        userBook.setUser(userService.findById(idUser));
        userBook.setBook(bookService.findById(idBook));
        userBook.setLocation(locationService.findById(location));
        userBook.setOrder_data(data);
        userBookService.save(userBook);
        model.addAttribute("userBooks", userBook);
        return "order";
    }
}
