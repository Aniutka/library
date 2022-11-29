create table author
(
    id   bigint auto_increment primary key,
    name varchar(256) not null
);

create table publishing
(
    id   bigint auto_increment primary key,
    name varchar(256) not null
);

create table location
(
    id   bigint auto_increment primary key,
    name varchar(30) not null
);


create table city
(
    id   bigint auto_increment primary key,
    name varchar(256) not null
);

create table genre
(
    id   bigint auto_increment primary key,
    name varchar(256) not null
);

create table role(
                     id bigint auto_increment primary key,
                     name varchar(256) not null);

create table address
(
    id       bigint auto_increment primary key,
    street   varchar(30) not null,
    building varchar(30) not null,
    city_id  bigint,
    foreign key (city_id) references city (id)
);

create table user
(
    id                 bigint auto_increment primary key,
    name               varchar(256) not null,
    login varchar(256) not null,
    password varchar(256) not null,
    dateOfBirth        date,
    dateOfRegistration date,
    placeOfWork        varchar(256) not null,
    address_id         bigint,
    foreign key (address_id) references address (id),
    role_id bigint,
    foreign key (role_id) references role (id)

);

create table book
(
    id             bigint auto_increment primary key,
    name           varchar(256) not null,
    genre_id       bigint,
    foreign key (genre_id) references genre (id),
    yearPublishing varchar(256) not null,
    numberPages    bigint       not null,
    isbn           bigint,
    amount         bigint,
    author_id      bigint,
    foreign key (author_id) references author (id),
    publishing_id  bigint,
    foreign key (publishing_id) references publishing (id)
);

create table user_book
(
    id          bigint auto_increment primary key,
    book_id     bigint,
    foreign key (book_id) references book (id),
    user_id     bigint,
    foreign key (user_id) references user (id),
    location_id bigint,
    foreign key (location_id) references location (id)
);
