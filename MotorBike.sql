--Create database [motorbike]
--USE [motorbike]

CREATE TABLE [dbo].[Account](
	[username] [nvarchar](255) NULL,
	[Password] [nvarchar](255) NULL,
	role int not null
)
INSERT [dbo].[Account] ([username],[Password], role ) values
('admin','12345', 1),
('customer1','12345', 2),
('customer2','12345', 2);


CREATE TABLE [dbo].[Categories](
	[ID] [int] IDENTITY(1,1) Primary key,
	[Name] [nvarchar](255) NULL,
)
INSERT [dbo].[Categories] (Name) values
( N'Xe Số Tự Ðộng'), ( N'Xe Tay Ga'), ( N'Xe Tay Côn'),( N'Xe Phân Khối Lớn')


CREATE TABLE [dbo].[Products](
	[ID] [int] IDENTITY(1,1) Primary key,
	[Name] [nvarchar](255) NULL,
	[Description] [nvarchar](max) NULL,
	[Price] [int] NULL,
	[Image] [nvarchar](max) NULL,
	[CategoryID] [int] NULL,
	FOREIGN KEY ([CategoryID]) REFERENCES [Categories]([ID])

)

INSERT [dbo].[Products] ( [Name], [Description], [Price], [Image], [CategoryID]) VALUES
( N'Honda Wave 110', N'Thu tuc thuê xe máy Honda Wave Alpha:
– Khách du lich có vé máy bay khu hoi dat coc tu 500.000d đến 1.000.000d, chup anh bang lái xe, chung minh thu và thanh toán tien thuê xe sau khi ký hop dong.
– Các truong hop khác dat coc 3 trieu cùng chung minh thu, chup anh bang lái xe kèm thanh toán tien thuê sau khi ký hop dong. Neu có the sinh viên các truong dai hoc công lap còn han có áp dung giam tien dat coc.
', 130000, N'1.jpg', 1),

( N'Honda Wave RSX', N'Thu tuc thuê xe máy Honda Wave:
– Khách du lich có vé máy bay khu hoi dat coc tu 500.000d đến 1.000.000d, chup anh bang lái xe, chung minh thu và thanh toán tien thuê xe sau khi ký hop dong.
– Các truong hop khác dat coc 3 trieu cùng chung minh thu, chup anh bang lái xe kèm thanh toán tien thuê sau khi ký hop dong. Neu có the sinh viên các truong dai hoc công lap còn han có áp dung giam tien dat coc.
', 130000, N'2.jpg', 1),

( N'Honda Blade 110', N'Thu tuc thuê xe máy Honda Blade 110:
– Khách du lich có vé máy bay khu hoi dat coc tu 500.000d đến 1.000.000d, chup anh bang lái xe, chung minh thu và thanh toán tien thuê xe sau khi ký hop dong.
– Các truong hop khác dat coc 3 trieu cùng chung minh thu, chup anh bang lái xe kèm thanh toán tien thuê sau khi ký hop dong. Neu có the sinh viên các truong dai hoc công lap còn han có áp dung giam tien dat coc.
', 130000, N'3.jpg', 1),

( N'Yamaha JupiterRC Fi 2020', N'Thu tuc thuê xe máy Yamaha Jupiter:
– Khách du lich có vé máy bay khu hoi dat coc tu 500.000d đến 1.000.000d, chup anh bang lái xe, chung minh thu và thanh toán tien thuê xe sau khi ký hop dong.
– Các truong hop khác dat coc 3 trieu cùng chung minh thu, chup anh bang lái xe kèm thanh toán tien thuê sau khi ký hop dong. Neu có the sinh viên các truong dai hoc công lap còn han có áp dung giam tien dat coc.
', 130000, N'4.jpg', 1),

( N'Yamaha Sirius', N'Thu tuc thuê xe máy Yamaha Sirius:
– Khách du lich có vé máy bay khu hoi dat coc tu 500.000d đến 1.000.000d, chup anh bang lái xe, chung minh thu và thanh toán tien thuê xe sau khi ký hop dong.
– Các truong hop khác dat coc 3 trieu cùng chung minh thu, chup anh bang lái xe kèm thanh toán tien thuê sau khi ký hop dong. Neu có the sinh viên các truong dai hoc công lap còn han có áp dung giam tien dat coc.
', 150000, N'5.jpg', 1),

 (N'Yamaha Nouvo Automatic', N'Thu tuc thuê xe máy Yamaha NouvoLX:
– Khách du lich có vé máy bay khu hoi dat coc tu 500.000d đến 1.000.000d, chup anh bang lái xe, chung minh thu và thanh toán tien thuê xe sau khi ký hop dong.
– Các truong hop khác dat coc 3 trieu cùng chung minh thu, chup anh bang lái xe kèm thanh toán tien thuê sau khi ký hop dong. Neu có the sinh viên các truong dai hoc công lap còn han có áp dung giam tien dat coc.
', 150000, N'6.jpg', 2),

( N'Honda Vision', N'Thu tuc thuê xe máy Honda Vision:
– Khách du lich có vé máy bay khu hoi dat coc tu 500.000d đến 1.000.000d, chup anh bang lái xe, chung minh thu và thanh toán tien thuê xe sau khi ký hop dong.
– Các truong hop khác dat coc 3 trieu cùng chung minh thu, chup anh bang lái xe kèm thanh toán tien thuê sau khi ký hop dong. Neu có the sinh viên các truong dai hoc công lap còn han có áp dung giam tien dat coc.
', 200000, N'7.jpg', 2),

( N'Honda Airblade125', N'Thu tuc thuê xe máy Honda Airblade:
– Khách du lich có vé máy bay khu hoi dat coc tu 500.000d đến 1.000.000d, chup anh bang lái xe, chung minh thu và thanh toán tien thuê xe sau khi ký hop dong.
– Các truong hop khác dat coc 3 trieu cùng chung minh thu, chup anh bang lái xe kèm thanh toán tien thuê sau khi ký hop dong. Neu có the sinh viên các truong dai hoc công lap còn han có áp dung giam tien dat coc.
', 220000, N'8.jpg', 2),

( N'Honda Lead', N'Thu tuc thuê xe máy Honda Lead:
– Khách du lich có vé máy bay khu hoi dat coc tu 500.000d đến 1.000.000d, chup anh bang lái xe, chung minh thu và thanh toán tien thuê xe sau khi ký hop dong.
– Các truong hop khác dat coc 3 trieu cùng chung minh thu, chup anh bang lái xe kèm thanh toán tien thuê sau khi ký hop dong. Neu có the sinh viên các truong dai hoc công lap còn han có áp dung giam tien dat coc.
', 180000, N'9.jpg', 2),

 ( N'Honda Winner 150 – Winner X', N'Thu tuc thuê xe máy Honda Winner:
– Khách du lich có vé máy bay khu hoi dat coc tu 500.000d đến 1.000.000d, chup anh bang lái xe, chung minh thu và thanh toán tien thuê xe sau khi ký hop dong.
– Các truong hop khác dat coc 3 trieu cùng chung minh thu, chup anh bang lái xe kèm thanh toán tien thuê sau khi ký hop dong. Neu có the sinh viên các truong dai hoc công lap còn han có áp dung giam tien dat coc.
', 300000, N'10.jpg', 3),

 ( N'Yamaha Exciter', N'Thu tuc thuê xe máy Yamaha Exiter:
– Khách du lich có vé máy bay khu hoi dat coc tu 500.000d đến 1.000.000d, chup anh bang lái xe, chung minh thu và thanh toán tien thuê xe sau khi ký hop dong.
– Các truong hop khác dat coc 3 trieu cùng chung minh thu, chup anh bang lái xe kèm thanh toán tien thuê sau khi ký hop dong. Neu có the sinh viên các truong dai hoc công lap còn han có áp dung giam tien dat coc.
', 250000, N'11.jpg', 3),

( N'Yamaha Ybr125G', N'Thu tuc thuê xe máy Yamaha Ybr125G:
– Khách du lich có vé máy bay khu hoi dat coc tu 500.000d đến 1.000.000d, chup anh bang lái xe, chung minh thu và thanh toán tien thuê xe sau khi ký hop dong.
– Các truong hop khác dat coc 3 trieu cùng chung minh thu, chup anh bang lái xe kèm thanh toán tien thuê sau khi ký hop dong. Neu có the sinh viên các truong dai hoc công lap còn han có áp dung giam tien dat coc.
', 250000, N'12.jpg', 3),

(N'Suzuki En150A', N'– Thuê xe tu 10 ngày tro lên giam 10%.
– Xe kèm 2 mu bao hiem chat luong cao cùng dây buoc ', 250000, N'13.jpg', 3),

( N'Honda XR 150', N'Suc manh cua chiec cào cào này đến từ khối động co 4 thì, xy-lanh don, 
làm mát bang không khí có dung tích 149cc, ty so khí nén 9.5:1. 
Ngoài ra, phiên ban Honda XR150L (2019) xuat khau thi truong Châu Âu dat tiêu chuan khí thoi Euro4.', 2200000, N'14.jpg', 4),

( N'Honda XR 250', N'XR 250cc', 450000, N'15.jpg', 4),
 ( N'Honda CB500X', N'Xe kèm 2 mu bao hiem chat luong cao cùng dây buoc

Thu tuc thuê xe máy Honda CB500x:
–Ðat coc 30 – 50 trieu cùng chung minh thu, chup anh bang lái xe kèm thanh toán tien thuê sau khi ký hop dong. .
', 1500000, N'16.jpg', 4),

( N'Kawasaki Versys 300', N'Xe máy Kawasaki Versys 300', 1200000, N'17.jpg', 4);


Create table requestStatus(
	requeststatus_id int PRIMARY KEY IDENTITY(1,1),
	status_name nvarchar(20)
);

insert into requestStatus (status_name)
VALUES
	('Opening'), -- request của kh dang cho
	('Waiting'), -- da dong y request, dang doi khach nhan xe
	('Processing'), -- khach da nhan xe
	('Finished'), -- khach da tra xe
	('Rejected'), -- tu choi yeu cau thue xe cua khach
	('Re-opening'); -- mo lai 1 reques da tu choi


-- Orders table
CREATE TABLE request (
    ID INT PRIMARY KEY IDENTITY(1,1),
	Name NVARCHAR(255) ,
	phonenumber nvarchar(20),
    Address NVARCHAR(255),
   [receivedDate] DATE,
   [returnDate] Date,
    TotalAmount INT,
	StatusID int
	FOREIGN KEY (StatusID) REFERENCES requestStatus(requeststatus_id)
);


-- OrderItems table
CREATE TABLE requestItems (
    ID INT PRIMARY KEY IDENTITY(1,1),
    requestID INT,
    ProductID INT,
    Quantity INT,
    FOREIGN KEY (requestID) REFERENCES request(ID),
    FOREIGN KEY (ProductID) REFERENCES Products(ID)
);

-- Chèn một bản ghi vào bảng Orders
INSERT INTO request ([Name], [phonenumber], [Address], [receivedDate], [returnDate], [totalAmount], [StatusID])
VALUES
('Nguyen Van A', '037373737',  N'173 Xuan Thuy, Cau Giay, Ha Noi', CAST(N'2024-02-20' AS Date), CAST(N'2024-02-20' AS Date), 390000, 1),
 ( 'Nguyen Van B', '037373737',  N'FPT Hoa Lac',CAST(N'2024-02-22' AS Date), CAST(N'2024-02-24' AS Date), 780000, 2);



-- Chèn một bản ghi vào bảng OrderItems
INSERT INTO requestItems (requestID, ProductID, Quantity)
VALUES 
(1,3,1),
(1,2,2),
(2,1,1),
(2,2,1);


select * from Categories
select * from  Products
select * from request
select * from requestStatus
select * from requestItems
select* from Account