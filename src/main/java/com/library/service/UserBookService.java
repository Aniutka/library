package com.library.service;

import com.library.model.entity.Book;
import com.library.model.entity.UserBook;

import java.util.List;

public interface UserBookService {
    void save(UserBook userBook);

    List<UserBook> findAll();

    UserBook getUserBook(Integer id);

    List<Book> findListBook(Integer id);

    List<UserBook> findAll1();

    List<Book> getBooksByUser(Integer id);


}
