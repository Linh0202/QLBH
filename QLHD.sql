CREATE DATABASE QLHD;
USE QLHD;
CREATE TABLE Khachhang(
    makh nvarchar(10) NOT NULL PRIMARY KEY,
    tenkh nvarchar(20) NOT NULL,
    dthoai nvarchar(15)
);
CREATE TABLE Hanghoa(
    mahh nvarchar(10) NOT NULL PRIMARY KEY,
    tenhh nvarchar(20),
    quicach nvarchar(20),
    dvtinh nvarchar(20),
    dongia float
);
CREATE TABLE Hoadon(
    hdso nvarchar(10) NOT NULL PRIMARY KEY,
    ngay nvarchar(20) not null,
    trigia float,
    makh nvarchar(10),
    FOREIGN KEY (makh) REFERENCES Khachhang(makh)
);
CREATE TABLE Chitiethoadon(
    hdso nvarchar(10),
    mahh nvarchar(10),
    FOREIGN KEY (hdso) REFERENCES Hoadon(hdso),
    FOREIGN KEY (mahh) REFERENCES Hanghoa(mahh),
    soluong int
);