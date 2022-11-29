ALTER TABLE Web_library.role
    RENAME TO user_role;

ALTER TABLE Web_library.user_role
DROP PRIMARY KEY,
    add foreign key (id) references user(id)


# ALTER TABLE Web_library.user_role
#     ADD FOREIGN KEY (id),
#     references user (id);