ALTER TABLE web_library.user

    add column account_non_expired bit(1) not null;

ALTER TABLE web_library.user

    add column account_non_locked bit(1) not null;

ALTER TABLE web_library.user
    add column credentials_non_expired bit(1) not null;

ALTER TABLE web_library.user
    add column enabled bit(1) not null;
