

ALTER TABLE Web_library.user
    DROP FOREIGN KEY user_ibfk_2;

ALTER TABLE Web_library.user
        drop COLUMN role_id;




# ALTER TABLE Web_library.role
#     RENAME TO user_role,
#     CHANGE COLUMN id user_id BIGINT primary key,
#     RENAME COLUMN name TO roles,
#     foreign key (user_id) references user (id);






# ALTER TABLE Web_library.role
# RENAME TO user_role;
# drop COLUMN id;
#
#
# RENAME COLUMN name TO roles;
#
# ALTER TABLE Web_library.user_role
# add user_id  FIRST roles bigint primary key,
# ADD FOREIGN KEY (user_id) REFERENCES user(id);
#
#
# ALTER TABLE Web_library.user_role
# ADD FOREIGN KEY (user_id) REFERENCES user(id);