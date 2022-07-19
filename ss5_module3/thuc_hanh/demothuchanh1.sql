USE `classicmodels`;

SELECT * FROM customers WHERE customerName = 'Land of Toys Inc.'; 

EXPLAIN SELECT * FROM customers WHERE customerName = 'Land of Toys Inc.'; 


-- thêm chỉ mục cho bảng customers
-- c1:
ALTER TABLE customers ADD INDEX idx_customerName(customerName);
-- c2 
create index idx_customerName on customers(customerName);


-- xoá chỉ mục trong bảng
-- c1
ALTER TABLE customers DROP INDEX idx_customerName;
-- c2 
drop index idx_customerName on customers ;


-- Tạo Mysql Stored Procedure đầu tiên

DELIMITER //

CREATE PROCEDURE findAllCustomers()

BEGIN

  SELECT * FROM customers;

END //

DELIMITER ;

-- Cách gọi procedure

call findAllCustomers();


-- xoá và tạo lại procedure

DELIMITER //

DROP PROCEDURE IF EXISTS `findAllCustomers`//

CREATE PROCEDURE findAllCustomers()

BEGIN

SELECT 
    *
FROM
    customers
WHERE
    customerNumber = 175;

END //