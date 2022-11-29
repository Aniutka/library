package com.library.dto;

import lombok.Data;

import java.sql.Date;

@Data
public class CreateDto {

    private String name;
    private String year;
    private Integer numberPage;
    private Integer authorId;
}
