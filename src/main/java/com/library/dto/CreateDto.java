package com.library.dto;

import lombok.Data;

import java.sql.Date;

@Data
public class CreateDto {

    private String name;
    private Integer genre;
    private String year;
    private Integer numberPages;
    private Integer publishingId;
    private Integer authorId;

}
