DROP TABLE IF EXISTS `customers`;

CREATE TABLE `customers` (
  `id` INTEGER PRIMARY KEY AUTOINCREMENT ,
  `first_name` VARCHAR ,
  `last_name` VARCHAR ,
  `email` VARCHAR ,
  `address` VARCHAR ,
  `city` VARCHAR ,
  `state` VARCHAR ,
  `zip` INTEGER
)

DROP TABLE IF EXISTS `orders`;

CREATE TABLE `orders` (
  `id` INTEGER PRIMARY KEY AUTOINCREMENT ,
  `order_date` DATE  ,
  `new field` INTEGER  ,
  `order_amount` INTEGER  ,
  `customer_id` INTEGER
)
