package com.library.model.repository;

import com.library.model.entity.Book;
import com.library.model.entity.User;
import org.springframework.data.jpa.repository.JpaRepository;
import org.springframework.data.jpa.repository.Query;
import org.springframework.stereotype.Repository;

import java.util.Collection;
import java.util.List;

@Repository
public interface BookRepository extends JpaRepository<Book,Integer> {
    @Query("from Book where name = :name")
    Book findByQuery(String name);

    List<Book> findByUserBooks(User userBooks);

    List<Book> findByNameStartingWith(String name);
}
