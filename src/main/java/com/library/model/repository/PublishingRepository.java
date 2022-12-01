package com.library.model.repository;

import com.library.model.entity.Location;
import com.library.model.entity.Publishing;
import org.springframework.data.jpa.repository.JpaRepository;

public interface PublishingRepository extends JpaRepository<Publishing,Integer> {

}
