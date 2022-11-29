ALTER TABLE Web_library.book
    CHANGE COLUMN yearPublishing year_publishing VARCHAR(256) NOT NULL ,
    CHANGE COLUMN numberPages number_pages BIGINT NOT NULL ;