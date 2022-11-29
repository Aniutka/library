package com.library.service.Impl;

import com.library.model.entity.Address;
import com.library.model.entity.User;
import com.library.model.repository.AddressRepository;
import com.library.model.repository.UserRepository;
import com.library.service.AddressService;
import lombok.RequiredArgsConstructor;
import org.springframework.stereotype.Service;

import java.util.List;

@Service
@RequiredArgsConstructor
public class AddressServiceImpl implements AddressService {
    private final AddressRepository addressRepository;

    @Override
    public List<Address> findAll() {

        return addressRepository.findAll();
    }
}

