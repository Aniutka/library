package com.library.service.Impl;

import com.library.model.entity.Author;
import com.library.model.entity.Book;
import com.library.model.entity.Publishing;
import com.library.model.repository.PublishingRepository;
import com.library.service.PublishingService;
import lombok.RequiredArgsConstructor;
import org.springframework.stereotype.Service;

import java.util.List;

@Service
@RequiredArgsConstructor
public class PublishingServiceImpl implements PublishingService {
    private final PublishingRepository publishingRepository;

    @Override
    public Publishing findById(Integer id)
    {
        return publishingRepository.getReferenceById(id);
    }

    @Override
    public List<Publishing> findAll() {
        return publishingRepository.findAll();
    }

    @Override
    public Publishing getPublishing(Integer id) {
            return publishingRepository.getReferenceById(id);

    }

    @Override
    public void save(Publishing publishing) {
        publishingRepository.save(publishing);
    }


    @Override
    public void delete(Integer id) {

    }
}
