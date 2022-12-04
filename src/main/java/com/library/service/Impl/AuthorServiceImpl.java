package com.library.service.Impl;

import com.library.model.entity.Author;
import com.library.model.entity.Book;
import com.library.model.entity.User;
import com.library.model.repository.AddressRepository;
import com.library.model.repository.AuthorRepository;
import com.library.service.AuthorService;
import lombok.RequiredArgsConstructor;
import org.springframework.stereotype.Service;

import java.util.List;
@Service
@RequiredArgsConstructor
public class AuthorServiceImpl implements AuthorService {
    private final AuthorRepository authorRepository;

    @Override
    public List<Author> findAll() {

        return authorRepository.findAll();
    }

        @Override
        public List<Author> findByQueryList(String name) {
            return authorRepository.findByNameStartingWith(name);
    }

    @Override
    public Author getAuthor(Integer id) {
        return authorRepository.getReferenceById(id);
    }


}
