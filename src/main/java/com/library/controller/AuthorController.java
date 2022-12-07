package com.library.controller;

import com.library.dto.CreateDto;
import com.library.model.entity.Author;
import com.library.model.entity.Book;
import com.library.model.entity.User;
import com.library.service.AuthorService;
import lombok.RequiredArgsConstructor;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.*;

import java.util.List;

@Controller
@RequiredArgsConstructor
@RequestMapping("/author")
public class AuthorController {
    private final AuthorService authorService;

    @GetMapping(value = "/author")
    public String author(Model model) {
        List<Author> authorList = authorService.findAll();
        model.addAttribute("author", authorList);
        return "author/author";
    }

    @GetMapping(value = "/authorBook")
    public String authorBook(@RequestParam Integer id, Model model) {
        var author = authorService.getAuthor(id);
        model.addAttribute("author", author);
        return "author/authorBook";
    }


    @GetMapping(value = "/findAuthors")
    public String findAuthor(@RequestParam String name,Model model) {
        List<Author> authors=authorService.findByQueryList(name);
        model.addAttribute("author", authors);
        return "author/author";
    }

    @GetMapping(value = "/showCreateAuthor")
    public String showCreateAuthor(Model model) {
        model.addAttribute("createAuthor", new Author());
            return "author/createAuthor";
        }

    @PostMapping(value = "/createAuthor")
    public String createAuthor(@ModelAttribute(value = "createAuthor")Author author, Model model) {
        authorService.save(author);
        var authors = authorService.findAll();
        model.addAttribute("author", authors);
        return "author/author";
    }

    @GetMapping("/authorDelete")
    public String deleteAuthor(@RequestParam Integer id,Model model) {
        authorService.delete(id);
        var authors = authorService.findAll();
        model.addAttribute("author", authors);
        return "author/author";
    }

    }

