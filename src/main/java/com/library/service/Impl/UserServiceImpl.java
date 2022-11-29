package com.library.service.Impl;

import com.library.dto.CreateDto;
import com.library.dto.UserDto;
import com.library.model.entity.Book;
import com.library.model.entity.User;
import com.library.model.repository.AddressRepository;
import com.library.model.repository.UserRepository;
import com.library.service.UserService;
import lombok.RequiredArgsConstructor;
import org.springframework.stereotype.Service;

import java.util.Collections;
import java.util.List;

@Service
@RequiredArgsConstructor
public class UserServiceImpl implements UserService {
    private final UserRepository userRepository;
    private final AddressRepository addressRepository;

    @Override
    public List<User> findAll() {
        return userRepository.findAll();
    }

    @Override
    public User findById(Integer id) {
        return userRepository.getReferenceById(id);
    }

    @Override
    public User findByQuery(String name) {
      return userRepository.findByQuery(name);
    }

    @Override
    public List<User> findByStreet(String street) {
        return userRepository.findByAddress_Street(street);
    }


    @Override
    public void saveUser(User user) {
        userRepository.save(user);

    }

    @Override
    public void save(UserDto userDto) {
        var user = new User();
        user.setName(userDto.getName());
        user.setUsername(userDto.getLogin());
        user.setPassword(userDto.getPassword());
        user.setDateBirth(userDto.getDateBirth());
        user.setDateRegistration(userDto.getDateRegistration());
        user.setPlaceWork(userDto.getPlaceWork());
//        var addressId = userDto.getAddressId();
//        if(addressId!=null){
//            var address=addressRepository.getReferenceById(addressId);
//           user.setAddress(address);

        userRepository.save(user);
    }

    @Override
    public User getUser(Integer id) {
        return userRepository.getReferenceById(id);
    }


}

