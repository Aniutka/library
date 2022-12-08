package com.library.service;

import com.library.model.entity.Book;
import com.library.model.entity.Genre;
import com.library.model.entity.Location;

import java.util.List;

public interface LocationService {
    Location findById(Integer id);
    List<Location> findAll();
}
