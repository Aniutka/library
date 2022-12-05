package com.library.model.entity;

import lombok.Data;
import lombok.Getter;
import lombok.Setter;
import lombok.ToString;
import org.hibernate.annotations.Type;
import org.hibernate.type.BooleanType;

import javax.persistence.*;
import java.sql.Date;
import java.time.LocalDate;
import java.util.Calendar;
import java.util.List;


@Getter
@Setter
@Entity

public class UserBook {
    @ToString.Exclude
    @Id
    @GeneratedValue(strategy = GenerationType.IDENTITY)
    private Integer id;
    @ToString.Exclude
    @ManyToOne(cascade = CascadeType.ALL)
    @JoinColumn(name = "book_id")
    private Book book;
    @ToString.Exclude
    @ManyToOne(cascade = CascadeType.ALL)
    @JoinColumn(name = "user_id")
    private User user;
    @ToString.Exclude
    @ManyToOne(cascade = CascadeType.ALL)
    @JoinColumn(name = "location_id")
    private Location location;

    @ToString.Exclude
    @Column
    @Temporal(TemporalType.DATE)
    private Calendar order_data;

    @ToString.Exclude
    @Column
    @Temporal(TemporalType.DATE)
    private Calendar return_date;

   @Column(name = "return_book")
    private Integer isReturn;
}
