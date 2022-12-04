package com.library.model.entity;

import lombok.Data;
import lombok.Getter;
import lombok.Setter;
import lombok.ToString;

import javax.persistence.*;
import java.util.List;

@Getter
@Setter
@Entity
public class Book {
    @Id
    @GeneratedValue(strategy = GenerationType.IDENTITY)
    private Integer id;
    @Column
    private String name;
    @Column
    private String year_publishing;
    @Column
    private Integer number_pages;
    @Column
    private Integer isbn;
    @Column
    private Integer amount;
    @ManyToOne(cascade = CascadeType.ALL)
    @JoinColumn(name = "publishing_id")
    private Publishing publishing;

    @ManyToOne(cascade = CascadeType.ALL)
    @JoinColumn(name = "genre_id")
    private Genre genre;

    @ManyToMany
    @JoinTable(
            name = "book_author",
            joinColumns = {@JoinColumn(name = "book_id")},
            inverseJoinColumns = {@JoinColumn(name = "author_id")}
    )
    List<Author> authors;


    @OneToMany(mappedBy = "book", cascade = CascadeType.ALL)
    @ToString.Exclude
    private List<UserBook> userBooks;

//    @Override
//    public String toString() {
//        final StringBuilder sb = new StringBuilder("Book{");
//        sb.append("id=").append(id);
//        sb.append(", name='").append(name).append('\'');
//        sb.append(", year_publishing='").append(year_publishing).append('\'');
//        sb.append(", number_pages=").append(number_pages);
//        sb.append(", isbn=").append(isbn);
//        sb.append(", amount=").append(amount);
//        sb.append(", publishing=").append(publishing);
//        sb.append(", genre=").append(genre);
//        sb.append(", authors=").append(authors);
//        sb.append(", userBooks=").append(userBooks);
//        sb.append('}');
//        return sb.toString();
//    }
}




















//@ManyToOne(cascade = CascadeType.ALL)
//@JoinColumn(name = "author_id")
//private Author author;

//    @ManyToMany(fetch = FetchType.EAGER, mappedBy = "books")
//    @ToString.Exclude
//    private List<Author> authors;