package com.library.controller;

import com.library.model.entity.Book;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.GetMapping;

import java.util.List;

public class IndexController {
    @GetMapping(value = "/index")
    public String book(Model model) {
        return "index";
    }
}
