package com.library.model.repository;

import com.library.model.entity.User;
import com.library.model.entity.UserBook;
import org.springframework.data.jpa.repository.JpaRepository;
import org.springframework.data.jpa.repository.Query;
import org.springframework.stereotype.Repository;

import java.util.List;

@Repository
public interface UserRepository extends JpaRepository<User,Integer> {
    @Query("from User where name = :name")
    User findByQuery(String name);

    List<User> findByAddress_Street(String street);
    List<UserBook> findAllBy();

    User findByUsername(String userName);

    @Query("from User where name = :name")
   List<User> findByQueryList(String name);

    List<User> findByNameStartingWith(String name);

}
