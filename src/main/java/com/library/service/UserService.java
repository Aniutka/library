package com.library.service;

import com.library.dto.UserDto;
import com.library.model.entity.Book;
import com.library.model.entity.User;
import com.library.model.entity.UserBook;
import org.springframework.stereotype.Service;

import java.util.List;

public interface UserService {
    List<User> findAll();

    User findById(Integer id);

    User findByQuery(String name);

    List<User> findByStreet(String street);

    void saveUser(User user);

    void save(UserDto userDto);

    User getUser(Integer id);

    List<User> findByQueryList(String name);

    List<Book> getBooks(int id);

    void delete(Integer id);


}
