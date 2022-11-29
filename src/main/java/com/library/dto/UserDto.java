package com.library.dto;

import com.library.model.entity.Address;
import lombok.Data;

import javax.persistence.CascadeType;
import javax.persistence.Column;
import javax.persistence.JoinColumn;
import javax.persistence.ManyToOne;
import java.sql.Date;

@Data
public class UserDto {

    private String name;
    private String login;
    private String password;
    private Date dateBirth;
    private Date dateRegistration;
    private String placeWork;
//    private Integer addressId;

}
