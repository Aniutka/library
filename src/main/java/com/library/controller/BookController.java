package com.library.controller;

import com.library.dto.CreateDto;
import com.library.dto.UpdateBookDto;
import com.library.model.entity.*;
import com.library.service.AuthorService;
import com.library.service.BookService;
import com.library.service.GenreService;
import com.library.service.PublishingService;
import lombok.RequiredArgsConstructor;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.*;

import java.sql.Date;
import java.util.List;

@Controller
@RequiredArgsConstructor
public class BookController {
    private final BookService bookService;
    private final AuthorService authorService;
    private final GenreService genreService;
    private final PublishingService publishingService;

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
        List<Genre> genres = genreService.findAll();
        List<Publishing> publishing = publishingService.findAll();
        model.addAttribute("authors", authors);
        model.addAttribute("genres", genres);
        model.addAttribute("publishing", publishing);
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


    @GetMapping("/bookDelete")
    public String delete(@RequestParam Integer id, Model model) {
        model.addAttribute("book", bookService.getBook(id));
        return "bookDeleteMes";
    }

    @GetMapping("/deleteB")
    public String delete1(@RequestParam Integer id,Model model) {
        bookService.delete(id);
        var books = bookService.findAll();
        model.addAttribute("books", books);
        return "booksTitle";
    }

    @GetMapping("/editBook")
    public String edit(@RequestParam Integer id, Model model) {
        var book=bookService.getBook(id);
        var updateBookDto = bookService.getBookDto(book);
        model.addAttribute("bookUpdate", updateBookDto);
        model.addAttribute("id",id);
        return "bookUpdate";
    }

    @PostMapping("/bookUpdate")
    public String update(@ModelAttribute(value = "bookUpdate") UpdateBookDto updateBookDto, Model model) {
        bookService.update(updateBookDto);
        return "booksTitle";
    }
}
