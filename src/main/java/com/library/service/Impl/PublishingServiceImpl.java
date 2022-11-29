package com.library.service.Impl;

import com.library.model.entity.Publishing;
import com.library.service.PublishingService;
import lombok.RequiredArgsConstructor;
import org.springframework.stereotype.Service;

@Service
@RequiredArgsConstructor
public class PublishingServiceImpl implements PublishingService {

    @Override
    public Publishing findById(Integer id) {
        return null;
    }
}
