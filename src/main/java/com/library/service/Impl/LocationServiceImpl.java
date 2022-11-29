package com.library.service.Impl;

import com.library.model.entity.Location;
import com.library.model.repository.AuthorRepository;
import com.library.model.repository.LocationRepository;
import com.library.service.LocationService;
import lombok.RequiredArgsConstructor;
import org.springframework.stereotype.Service;

@Service
@RequiredArgsConstructor
public class LocationServiceImpl implements LocationService {
    private final LocationRepository locationRepository;
    @Override
    public Location findById(Integer id) {
        return locationRepository.getReferenceById(id);
    }
}
