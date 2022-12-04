package com.library.controller;

import com.library.model.entity.Author;
import com.library.model.entity.Book;
import com.library.model.entity.User;
import com.library.service.AuthorService;
import lombok.RequiredArgsConstructor;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.RequestParam;

import java.util.List;

@Controller
@RequiredArgsConstructor
public class AuthorController {
    private final AuthorService authorService;

    @GetMapping(value = "/author")
    public String author(Model model) {
        List<Author> authorList = authorService.findAll();
        model.addAttribute("author", authorList);
        return "author";
    }

    @GetMapping(value = "/authorBook")
    public String authorBook(@RequestParam Integer id, Model model) {
        var author = authorService.getAuthor(id);
        model.addAttribute("author", author);
        return "authorBook";
    }


    @GetMapping(value = "/findAuthors")
    public String findAuthor(@RequestParam String name,Model model) {
        List<Author> authors=authorService.findByQueryList(name);
        model.addAttribute("author", authors);
        return "author";
    }

}
