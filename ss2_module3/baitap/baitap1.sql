drop database if exists ss2_module2;

create database ss2_module2;

use ss2_module2;

CREATE TABLE phieu_xuat (
    so_phieu_xuat INT PRIMARY KEY,
    ngay_xuat DATE
);

CREATE TABLE vat_tu (
    ma_vat_tu INT PRIMARY KEY,
    ten_vat_tu VARCHAR(55)
);

CREATE TABLE chi_tiet_phieu_xuat (
    don_gia_xuat DOUBLE,
    so_luong_xuat INT,
    so_phieu_xuat INT,
    ma_vat_tu INT,
    PRIMARY KEY (so_phieu_xuat , ma_vat_tu),
    FOREIGN KEY (so_phieu_xuat)
        REFERENCES phieu_xuat (so_phieu_xuat),
    FOREIGN KEY (ma_vat_tu)
        REFERENCES vat_tu (ma_vat_tu)
);

CREATE TABLE phieu_nhap (
    so_phieu_nhap INT PRIMARY KEY,
    ngay_nhap DATE
);

CREATE TABLE chi_tiet_phieu_nhap (
    don_gia_nhap DOUBLE,
    so_luong_nhap INT,
    ma_vat_tu INT,
    so_phieu_nhap INT,
    PRIMARY KEY (ma_vat_tu , so_phieu_nhap),
    FOREIGN KEY (ma_vat_tu)
        REFERENCES vat_tu (ma_vat_tu),
    FOREIGN KEY (so_phieu_nhap)
        REFERENCES phieu_nhap (so_phieu_nhap)
);

CREATE TABLE nha_cung_cap (
    ma_nha_cung_cap INT PRIMARY KEY,
    ten_nha_cung_cap VARCHAR(55),
    dia_chi VARCHAR(55)
);

create table so_dien_thoai (
so_dien_thoai varchar(55) primary key,
so_dien_thoai_ncc int ,
foreign key (so_dien_thoai_ncc) references nha_cung_cap(ma_nha_cung_cap)
);

create table don_dat_hang(
so_don_hang int primary key ,
ngay_dat_hang date,
ma_nha_cung_cap int ,
foreign key (ma_nha_cung_cap) references nha_cung_cap(ma_nha_cung_cap)
);

create table chi_tiet_don_dat_hang(
so_don_hang int ,
ma_vat_tu int ,
primary key (so_don_hang,ma_vat_tu),
foreign key  (so_don_hang) references don_dat_hang(so_don_hang),
foreign key (ma_vat_tu) references vat_tu(ma_vat_tu)
);




