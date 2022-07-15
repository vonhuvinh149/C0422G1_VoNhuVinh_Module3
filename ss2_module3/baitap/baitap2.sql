drop database if exists ss2_module2_baitap2;

create database ss2_module2_baitap2;

use ss2_module2_baitap2;

CREATE TABLE customer (
    c_id INT PRIMARY KEY,
    c_name VARCHAR(55),
    c_age INT
);

CREATE TABLE `order` (
    o_id INT PRIMARY KEY,
    c_id INT,
    o_date DATETIME,
    o_total_price DOUBLE,
    FOREIGN KEY (c_id)
        REFERENCES customer (c_id)
);

CREATE TABLE product (
    p_id INT PRIMARY KEY,
    p_name VARCHAR(55),
    p_price DOUBLE
);

CREATE TABLE order_detail (
    o_id INT,
    p_id INT,
    od_qty VARCHAR(55),
    PRIMARY KEY (o_id , p_id),
    FOREIGN KEY (o_id)
        REFERENCES `order` (o_id),
    FOREIGN KEY (p_id)
        REFERENCES product (p_id)
);

INSERT INTO customer (c_id, c_name, c_age) VALUES ('1', 'Minh Quan', '10'),
 ('2', 'Ngoc Oanh', '20'),
 ('3', 'Hong Ha', '50');

INSERT INTO `order` (o_id, c_id, o_date) VALUES ('1', '1', '2006/03/21'),
 ('2', '2', '2006/03/23'),
 ('3', '1', '2006/03/13');

INSERT INTO product (p_id, p_name, p_price) VALUES ('1', 'May Giat', '3'),
 ('2', 'Tu Lanh', '5'),
 ('3', 'Dieu Hoa', '7'),
 ('4', 'Quat', '1'),
 ('5', 'Bep Dien', '2');

INSERT INTO order_detail (o_id, p_id, od_qty) VALUES ('1', '1', '3'),
 ('1', '3', '7'),
 ('1', '4', '2'),
 ('2', '1', '1'),
 ('3', '1', '8'),
 ('2', '5', '4'),
 ('2', '3', '3');

 -- Hiển thị các thông tin  gồm oID, oDate, oPrice của tất cả các hóa đơn trong bảng Order
 
SELECT 
    o_ID, o_date, o_total_price
FROM
    `order` o ;
    
  -- Hiển thị danh sách các khách hàng đã mua hàng, và danh sách sản phẩm được mua bởi các khách
SELECT 
    c.c_name, p.p_name
FROM
    customer c
        JOIN
    `order` o ON c.c_ID = o.c_ID
        JOIN
    order_detail od ON o.o_ID = od.o_ID
        JOIN
    product p ON p.p_ID = od.p_ID;
 
 -- Hiển thị tên những khách hàng không mua bất kỳ một sản phẩm nào
 
 SELECT 
    c.c_name
FROM
    customer c
        LEFT JOIN
    `order` o ON c.c_ID = o.c_ID
WHERE
    o.o_date IS NULL;
 
 /* 
 Hiển thị mã hóa đơn, ngày bán và giá tiền của từng hóa đơn 
 giá một hóa đơn được tính bằng tổng giá bán của từng loại mặt hàng xuất hiện trong hóa đơn. 
 */
 
SELECT 
    o.o_ID, o.o_date, odQTY * p_price AS o_total_price
FROM
    `order` o
        JOIN
    order_detail od ON o.o_ID = od.o_ID
        JOIN
    product p ON p.p_ID = od.p_ID
WHERE
    odQTY * p_price IS NOT NULL