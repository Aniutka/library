package com.library.service;

import com.library.dto.CreateDto;
import com.library.model.entity.Address;
import com.library.model.entity.Author;
import com.library.model.entity.Book;
import com.library.model.entity.User;
import lombok.RequiredArgsConstructor;
import org.springframework.stereotype.Service;

import java.util.List;


public interface AuthorService {

    List<Author> findAll();
    List<Author> findByQueryList(String name);
    Author getAuthor(Integer id);
    void save(Author author);
    void delete(Integer id);
}
