package com.library.service.Impl;

import com.library.dto.CreateDto;
import com.library.dto.UserDto;
import com.library.model.entity.Book;
import com.library.model.entity.Role;
import com.library.model.entity.User;
import com.library.model.entity.UserBook;
import com.library.model.repository.AddressRepository;
import com.library.model.repository.BookRepository;
import com.library.model.repository.UserBookRepository;
import com.library.model.repository.UserRepository;
import com.library.service.UserService;
import lombok.RequiredArgsConstructor;
import org.springframework.stereotype.Service;

import java.util.ArrayList;
import java.util.Collections;
import java.util.List;

@Service
@RequiredArgsConstructor
public class UserServiceImpl implements UserService {
    private final UserRepository userRepository;
    private final AddressRepository addressRepository;
    private final BookRepository bookRepository;
    private final UserBookRepository userBookRepository;

    @Override
    public List<User> findAll() {
        return userRepository.findAll();
    }

    @Override
    public User findById(Integer id) {
        return userRepository.getReferenceById(id);
    }

    @Override
    public User findByQuery(String name) {
        return userRepository.findByQuery(name);
    }

    @Override
    public List<User> findByQueryList(String name) {
        return userRepository.findByNameStartingWith(name);
    }

    @Override
    public List<User> findByStreet(String street) {
        return userRepository.findByAddress_Street(street);
    }


    @Override
    public void saveUser(User user) {
        userRepository.save(user);
    }

    @Override
    public void save(UserDto userDto) {
        var user = new User();
        user.setName(userDto.getName());
        user.setUsername(userDto.getLogin());
        user.setPassword(userDto.getPassword());
        user.setDateBirth(userDto.getDateBirth());
        user.setDateRegistration(userDto.getDateRegistration());
        user.setPlaceWork(userDto.getPlaceWork());
        user.setRoles(Collections.singletonList(Role.ROLE_USER));
//        user.setPassword(bCryptPasswordEncoder.encode(userDto.getPassword()));
//        var addressId = userDto.getAddressId();
//        if(addressId!=null){
//            var address=addressRepository.getReferenceById(addressId);
//           user.setAddress(address);

        userRepository.save(user);
    }

    @Override
    public User getUser(Integer id) {
        User user = userRepository.getReferenceById(id);
        return user;
    }

    @Override
    public List<Book> getBooks(int id) {
        return bookRepository.findByUserBooks(getUser(id));
    }

    @Override
    public void delete(Integer id) {
        userRepository.deleteById(id);
    }

//    @Override
//    public void deleteBook(Integer id) {
//            List<UserBook> userBooks = userBookRepository.findBooksByUser(id);
//            userBooks.remove()
//            for(UserBook userBook: userBooks ) {
//                books.add(userBook.getBook());
//            }
//            return books;
//        }
}





