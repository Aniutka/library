drop table user_role;

create table user_roles
(
    user_id  bigint  primary key,
    roles   varchar(255),
    foreign key (user_id) references user (id))