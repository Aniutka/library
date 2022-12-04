ALTER TABLE `web_library`.`user_book`
    ADD COLUMN `return_date` DATE NULL AFTER `order_data`,
    ADD COLUMN `return` TINYINT NULL AFTER `return_date`;