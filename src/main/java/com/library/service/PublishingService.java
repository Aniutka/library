package com.library.service;

import com.library.model.entity.Author;
import com.library.model.entity.Book;
import com.library.model.entity.Publishing;

import java.util.List;

public interface PublishingService {
    Publishing findById(Integer id);

    List<Publishing> findAll();

    Publishing getPublishing(Integer id);

    void save(Publishing publishing);

    void delete(Integer id);
}
