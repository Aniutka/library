package com.library.controller;

import com.library.dto.CreateDto;
import com.library.model.entity.Author;
import com.library.model.entity.Book;
import com.library.model.entity.User;
import com.library.model.entity.UserBook;
import com.library.service.AuthorService;
import com.library.service.BookService;
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
public class BookController {
    private final BookService bookService;
    private final AuthorService authorService;

    @GetMapping(value = "/booksTitle")
    public String bookTitle(Model model) {
        List<Book> books = bookService.findAll();
        model.addAttribute("books", books);
        return "booksTitle";
    }

    @GetMapping(value = "/booksDetails")
    public String getBook(@RequestParam Integer id, Model model) {
        var book = bookService.getBook(id);
        model.addAttribute("book", book);
        return "booksDetails";
    }

    @GetMapping(value = "/catalog")
    public String catalog(Model model) {
        List<Book> books = bookService.findAll();
        List<Author> authors = authorService.findAll();
        model.addAttribute("books", books);
        model.addAttribute("authors", authors);
        return "catalog";
    }

    @GetMapping(value = "/books")
    public String books(Model model) {
        List<Book> books = bookService.findAll();
        model.addAttribute("books", books);
        return "books";
    }

    @GetMapping(value = "/showCreateBook")
    public String showCreateBook(Model model) {
        model.addAttribute("createBook", new CreateDto());
        List <Author> authors = authorService.findAll();
        model.addAttribute("authors", authors);
        return "createBook";
    }

    @PostMapping(value = "/createBook")
    public String createBook(@ModelAttribute(value = "createBook") CreateDto createDto, Model model) {
        bookService.save(createDto);
        var books = bookService.findAll();
        model.addAttribute("books", books);
        return "booksTitle";
    }


    @GetMapping(value = "/findBook")
    public String findBook(@RequestParam String name,Model model) {
        List<Book> books=bookService.findByQueryList(name);
        model.addAttribute("books", books);
        return "booksTitle";
    }

}
