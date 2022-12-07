package com.library.dto;

import lombok.Data;

@Data
public class UpdateBookDto {
    private Integer id;
    private String name;
    private String year;
    private Integer numberPages;
    private Integer authorId;
}
