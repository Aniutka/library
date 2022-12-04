package com.library.model.repository;

import com.library.model.entity.Author;
import com.library.model.entity.Book;
import com.library.model.entity.User;
import org.springframework.data.jpa.repository.JpaRepository;
import org.springframework.data.jpa.repository.Query;
import org.springframework.stereotype.Repository;

import java.util.List;

@Repository
public interface AuthorRepository extends JpaRepository<Author,Integer> {
    List<Author> findByNameStartingWith(String name);
}
