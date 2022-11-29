package com.library.model.repository;

import com.library.model.entity.Book;
import com.library.model.entity.User;
import com.library.model.entity.UserBook;
import org.springframework.data.jpa.repository.JpaRepository;
import org.springframework.data.jpa.repository.Query;

import java.util.List;

public interface UserBookRepository extends JpaRepository<UserBook, Integer> {
    @Query("from UserBook where id = :user_id")
    List<Book> findByQuery(Integer user_id);

}
