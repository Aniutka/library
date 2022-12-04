package com.library.service;

import com.library.dto.CreateDto;
import com.library.model.entity.Address;
import com.library.model.entity.Book;
import com.library.model.entity.User;

import java.util.Collection;
import java.util.List;

public interface BookService {
    List<Book> findAll();
    Book findBookName(String name);
Book getBook(Integer id);

    Book findById(Integer id);

void save(CreateDto createDto);
    List<Book> findByQueryList(String name);
}

