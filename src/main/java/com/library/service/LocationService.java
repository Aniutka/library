package com.library.service;

import com.library.model.entity.Book;
import com.library.model.entity.Location;

public interface LocationService {
    Location findById(Integer id);
}
