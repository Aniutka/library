package com.library.service.Impl;

import com.library.dto.CreateDto;
import com.library.dto.UpdateBookDto;
import com.library.model.entity.Book;
import com.library.model.entity.Role;
import com.library.model.entity.User;
import com.library.model.repository.AuthorRepository;
import com.library.model.repository.BookRepository;
import com.library.model.repository.GenreRepository;
import com.library.model.repository.PublishingRepository;
import com.library.service.BookService;
import com.library.service.GenreService;
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
  private final GenreRepository genreRepository;
  private final PublishingRepository publishingRepository;

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
        var genreId = createDto.getGenre();
        var genre = genreRepository.getReferenceById(genreId);
        var publishingId = createDto.getPublishingId();
        var publishing = publishingRepository.getReferenceById(publishingId);
        book.setName(createDto.getName());
        book.setGenre(genre);
        book.setPublishing(publishing);
        book.setYearPublishing(createDto.getYear());
        book.setNumberPages(createDto.getNumberPages());
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

    @Override
    public void delete(Integer id) {
        bookRepository.deleteById(id);
    }

    @Override
    public UpdateBookDto getBookDto(Book book) {
        var updateBookDto = new UpdateBookDto();
        updateBookDto.setId(book.getId());
        updateBookDto.setName(book.getName());
        updateBookDto.setYear(book.getYearPublishing());
        updateBookDto.setNumberPages(book.getNumberPages());
        return updateBookDto;
    }

    @Override
    public void update(UpdateBookDto updateBookDto) {
        var book = new Book();
        book.setId(updateBookDto.getId());
        book.setName(updateBookDto.getName());
        book.setYearPublishing(updateBookDto.getYear());
        book.setNumberPages(updateBookDto.getNumberPages());
        bookRepository.save(book);
    }


}
