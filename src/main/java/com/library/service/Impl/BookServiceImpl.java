package com.library.service.Impl;

import com.library.dto.CreateDto;
import com.library.model.entity.Book;
import com.library.model.repository.AuthorRepository;
import com.library.model.repository.BookRepository;
import com.library.service.BookService;
import lombok.RequiredArgsConstructor;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import java.util.Collection;
import java.util.Collections;
import java.util.List;
@Service
@RequiredArgsConstructor
public class BookServiceImpl implements BookService {

  private final BookRepository bookRepository;
  private final AuthorRepository authorRepository;

//    @Autowired
//    public BookServiceImpl(BookRepository bookRepository) {
//        this.bookRepository = bookRepository;
//    }

    @Override
    public List<Book> findAll() {

        return  bookRepository.findAll();
    }

    @Override
    public Book findBookName(String name) {
        return bookRepository.findByQuery(name);
    }

    @Override
    public Book getBook(Integer id) {
        return bookRepository.getReferenceById(id);
    }

    @Override
    public Book findById(Integer id) {
        return bookRepository.getReferenceById(id);
    }


    @Override
    public void save(CreateDto createDto) {
        var book = new Book();
        book.setName(createDto.getName());
        book.setYear_publishing(createDto.getYear());
        book.setNumber_pages(createDto.getNumberPage());
        var authorId = createDto.getAuthorId();
        if(authorId!=null){
            var author=authorRepository.getReferenceById(authorId);
            book.setAuthors(Collections.singletonList(author));
        }
        bookRepository.save(book);
    }

    @Override
    public List<Book> findByQueryList(String name) {
        return bookRepository.findByNameStartingWith(name);
    }

//    @Override
//    public List<Book>find(String name) {
//      List<Book> booksAll = bookRepository.findAll();
//      List<Book> books = new Book();
//        for (Book book1:booksAll) {
//            if (book1.getName().equals(name)){
//               book.setId(book1.getId());
//            }
//        }
//        return bookRepository.getReferenceById(book.getId());
//    }



}
