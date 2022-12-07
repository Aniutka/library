package com.library.model.repository;

import com.library.model.entity.Genre;
import com.library.model.entity.Location;
import org.springframework.data.jpa.repository.JpaRepository;

public interface GenreRepository extends JpaRepository <Genre,Integer>{

}
