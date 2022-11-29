ALTER TABLE Web_library.user
    CHANGE COLUMN dateOfBirth date_birth DATE NULL DEFAULT NULL ,
    CHANGE COLUMN dateOfRegistration date_registration DATE NULL DEFAULT NULL ,
    CHANGE COLUMN placeOfWork place_work VARCHAR(256) NOT NULL ;