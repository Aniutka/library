package com.library.model.repository;

import com.library.model.entity.Book;
import com.library.model.entity.User;
import com.library.model.entity.UserBook;
import org.springframework.data.jpa.repository.JpaRepository;
import org.springframework.data.jpa.repository.Modifying;
import org.springframework.data.jpa.repository.Query;
import org.springframework.data.repository.query.Param;

import javax.transaction.Transactional;
import java.util.List;

public interface UserBookRepository extends JpaRepository<UserBook, Integer> {

    @Query("from UserBook where id = :user_id")
    List<Book> findByQuery(Integer user_id);

    @Query(" FROM UserBook where user.id=10")
    List<UserBook> findByQuery1();

    @Transactional
    @Query(" FROM UserBook where user.id=:id and isReturn=1")
    List <UserBook>findBooksByUser(Integer id);


    @Query(" FROM UserBook where book.id=:id and isReturn=1")
    UserBook returnedBook(Integer id);


    @Modifying
    @Query("Update UserBook SET isReturn=:isReturn")
    public void updateBook(@Param("isReturn") Integer isReturn);

}
