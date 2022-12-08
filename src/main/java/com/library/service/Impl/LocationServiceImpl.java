package com.library.service.Impl;

import com.library.model.entity.Location;
import com.library.model.repository.AuthorRepository;
import com.library.model.repository.LocationRepository;
import com.library.service.LocationService;
import lombok.RequiredArgsConstructor;
import org.springframework.stereotype.Service;

import java.util.List;

@Service
@RequiredArgsConstructor
public class LocationServiceImpl implements LocationService {
    private final LocationRepository locationRepository;
    @Override
    public Location findById(Integer id) {
        return locationRepository.getReferenceById(id);
    }

    @Override
    public List<Location> findAll() {
        return locationRepository.findAll();
    }
}
