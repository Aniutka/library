package com.library.service;

import com.library.model.entity.Address;
import com.library.model.entity.Author;
import com.library.model.entity.Book;
import lombok.RequiredArgsConstructor;
import org.springframework.stereotype.Service;

import java.util.List;


public interface AuthorService {

    List<Author> findAll();

   Author findByAuthor(Integer id);
    Author getAuthor(Integer id);
}
