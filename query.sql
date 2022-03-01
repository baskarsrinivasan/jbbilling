ALTER TABLE `product_purchase` ADD `tax` FLOAT NOT NULL AFTER `payment_type`;
ALTER TABLE `product_purchase_details` ADD `tax` FLOAT NOT NULL AFTER `discount`;
ALTER TABLE `company_information` ADD `gstin_number` VARCHAR(255) NOT NULL AFTER `website`;
UPDATE `company_information` SET `gstin_number`='33AJDPJ4029Q1Z1' WHERE 1
ALTER TABLE `product_information` ADD `product_type` INT NOT NULL AFTER `product_details`;