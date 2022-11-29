create table book_author
(
    id   bigint auto_increment primary key,
    book_id  bigint,
    foreign key (book_id) references book (id),
    author_id  bigint,
    foreign key (author_id) references author (id)
);
