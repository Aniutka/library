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
import org.springframework.web.bind.annotation.*;

import java.sql.Date;
import java.time.LocalDate;
import java.util.Calendar;
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
    public String creatOrderBook(@RequestParam Integer idBook, @RequestParam Integer idUser, @RequestParam Integer location, Model model) {
        var userBook = new UserBook();
        userBook.setUser(userService.findById(idUser));
        userBook.setBook(bookService.findById(idBook));
        userBook.setLocation(locationService.findById(location));
//        userBook.setOrder_data(LocalDate.now ());
        userBook.setOrder_data(Calendar.getInstance());
        Calendar cal = Calendar.getInstance();
        cal.add(Calendar.MONTH, 1);
//        userBook.setOrder_data(LocalDate.now ());
//        userBook.setReturn_data(userBook.getOrder_data().plusMonths(1));
        userBook.setReturn_date(cal);
        userBook.setIsReturn(1);
        userBookService.save(userBook);
        model.addAttribute("userBooks", userBook);
        return "order";
    }

    @GetMapping(value = "/UserBookReturned")
    public String refundBook(@RequestParam Integer id, Model model) {
       userBookService.returnedBook(id);
        return "index";
    }


}
