drop database if exists ss2_module2_baitap2;

create database ss2_module2_baitap2;

use ss2_module2_baitap2;

CREATE TABLE customer (
    c_id INT AUTO_INCREMENT PRIMARY KEY,
    c_name VARCHAR(55),
    c_age INT
);

CREATE TABLE my_order (
    o_id INT AUTO_INCREMENT PRIMARY KEY,
    c_id INT,
    o_date DATE,
    o_total_price DOUBLE,
    FOREIGN KEY (c_id)
        REFERENCES customer (c_id)
);

CREATE TABLE product (
    p_id INT AUTO_INCREMENT PRIMARY KEY,
    p_name VARCHAR(55),
    p_price DOUBLE
);

CREATE TABLE orderdetail (
    o_id INT,
    p_id INT,
    od_qty VARCHAR(55),
    PRIMARY KEY (o_id , p_id),
    FOREIGN KEY (o_id)
        REFERENCES my_order (o_id),
    FOREIGN KEY (p_id)
        REFERENCES product (p_id)
);






