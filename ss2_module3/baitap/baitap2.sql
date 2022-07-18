drop database if exists quan_ly_san_pham;

create database quan_ly_san_pham;

use quan_ly_san_pham;

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
