DROP DATABASE IF EXISTS ss5_products ;

CREATE DATABASE ss5_products;

use ss5_products ;

CREATE TABLE products (
    Id INT AUTO_INCREMENT PRIMARY KEY,
    productCode INT,
    productName VARCHAR(45),
    productPrice DOUBLE,
    productAmount INT,
    productDescription VARCHAR(255),
    productStatus VARCHAR(255)
);

INSERT INTO products(productCode,productName,productPrice,productAmount,productDescription,productStatus) 
VALUES (4,"banh keo" ,10000,50,"ngon","chat luong"),
(2,"banh" ,10000,40,"ngon","chat luong"),
(5," keo" ,10000,30,"ngon","chat luong"),
(3,"banh keo" ,10000,35,"ngon","chat luong"),
(6,"banh keo" ,10000,100,"ngon","chat luong"),
(9,"banh keo" ,10000,12,"ngon","chat luong"),
(34,"banh keo" ,10000,36,"ngon","chat luong"),
(16,"banh keo" ,10000,36,"ngon","chat luong"),
(27,"banh keo" ,10000,36,"ngon","chat luong"),
(20,"banh keo" ,10000,36,"ngon","chat luong"),
(25,"banh keo" ,10000,36,"ngon","chat luong"),
(30,"banh keo" ,10000,36,"ngon","chat luong");


-- bước 3 ------------------------------------------------------------------------------------

-- Tạo Unique Index trên bảng Products (sử dụng cột productCode để tạo chỉ mục)

CREATE UNIQUE INDEX idx_products ON products(productCode) ;

-- Tạo Composite Index trên bảng Products (sử dụng 2 cột productName và productPrice)

CREATE INDEX idx_full_products ON products(productPrice,productcode) ;


ALTER TABLE products DROP INDEX idx_products;

-- Sử dụng câu lệnh EXPLAIN để biết được câu lệnh SQL của bạn thực thi như nào

EXPLAIN SELECT * FROM products WHERE productcode = 0 ;

-- bước 4 -----------------------------------------------------------------------------------------

-- Tạo view lấy về các thông tin: productCode, productName, productPrice, productStatus từ bảng products. 

CREATE VIEW products_view AS
    SELECT 
        p.productCode,
        p.productName,
        p.productPrice,
        p.productStatus
    FROM
        products p;

-- sửa đổi view 

CREATE OR REPLACE VIEW products_view AS
    SELECT 
        p.id, p.productCode, p.productName
    FROM
        products p;
        
-- xoá view 

DROP VIEW products_view ;
        
--  hiển thị bảng ảo 

SELECT * FROM products_view ;


-- bước 5  ------------------------------------------------------------------------------------

-- Tạo store procedure lấy tất cả thông tin của tất cả các sản phẩm trong bảng product

DELIMITER $$ 
CREATE PROCEDURE find_all_products()
BEGIN 
    SELECT * fROM products ;
END $$
DELIMITER ;


-- Tạo store procedure thêm một sản phẩm mới

DELIMITER $$
CREATE PROCEDURE add_new_product(productCode INT, productName VARCHAR(45), productPrice double) 
BEGIN 
	INSERT INTO products (productCode, productName, productPrice)
    VALUES (productCode, productName, productPrice);
END $$
DELIMITER ;

-- gọi procedure

CALL add_new_product(123, 'giày', 50000);

-- Tạo store procedure sửa thông tin sản phẩm theo id
DELIMITER $$
CREATE PROCEDURE edit_product(product_code int, product_price double) 
BEGIN 
	SET sql_safe_updates = 0;
	UPDATE products
    SET productPrice = product_price
    WHERE productCode = product_code;
    SET sql_safe_updates = 1;
END $$
DELIMITER ;

-- gọi procedure
CALL edit_product(122,101000);

-- Tạo store procedure xoá sản phẩm theo id
DELIMITER $$
CREATE PROCEDURE delete_product(product_id INT) 
BEGIN 
	DELETE 
    FROM products
    WHERE id = product_id;
END $$
DELIMITER ;
-- gọi
CALL delete_product(6);

