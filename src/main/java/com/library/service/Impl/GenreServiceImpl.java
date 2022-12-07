package com.library.service.Impl;

import com.library.model.entity.Genre;
import com.library.model.repository.GenreRepository;
import com.library.model.repository.PublishingRepository;
import com.library.service.GenreService;
import lombok.RequiredArgsConstructor;
import org.springframework.stereotype.Service;

import java.util.List;

@Service
@RequiredArgsConstructor

public class GenreServiceImpl implements GenreService {

    private final GenreRepository genreRepository;

    @Override
    public List<Genre> findAll() {
        return genreRepository.findAll();
    }

}
