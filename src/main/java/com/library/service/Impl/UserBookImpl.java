package com.library.service.Impl;

import com.library.model.entity.Book;
import com.library.model.entity.UserBook;
import com.library.model.repository.UserBookRepository;
import com.library.model.repository.UserRepository;
import com.library.service.UserBookService;
import lombok.RequiredArgsConstructor;
import org.springframework.stereotype.Service;

import java.util.ArrayList;
import java.util.Collections;
import java.util.List;
@Service
@RequiredArgsConstructor
public class UserBookImpl implements UserBookService {
    private final UserBookRepository userBookRepository;

    @Override
    public void save(UserBook userBook) {
        var book = new Book();
//     userBook.setBook(userBook.getBook());
//     userBook.setUser(userBook.getUser());
//     userBook.setLocation(userBook.getLocation());
//     userBook.setOrder_data(userBook.getOrder_data());
          userBookRepository.save(userBook);
    }

    @Override
    public List<UserBook> findAll() {
        return userBookRepository.findAll();
    }

    @Override
    public UserBook getUserBook(Integer id) {

        return userBookRepository.getReferenceById(id);
    }

    @Override
    public List<Book> findListBook(Integer id) {
        return userBookRepository.findByQuery(id);
    }

    @Override
    public List<UserBook> findAll1() {
        return userBookRepository.findByQuery1();
    }

    @Override
    public List<Book> getBooksByUser(Integer id){
        List<UserBook> userBooks = userBookRepository.findBooksByUser(id);
        List<Book> books = new ArrayList<>();
        for(UserBook userBook: userBooks ) {
            books.add(userBook.getBook());
        }
        return books;
    }
    }

