use Marketing;
#insert marketing data records
insert into marketing_data (  date , geo , impressions , clicks )
values
('2016-01-01','TX',2532,45),
('2016-01-01','CA',3425,63),
('2016-01-01','NY',3532,25),
('2016-01-01','MN',1342,784),
('2016-01-02','TX',3643,23),
('2016-01-02','CA',1354,53),
('2016-01-02','NY',4643,85),
('2016-01-02','MN',2366,85),
('2016-01-03','TX',2353,57),
('2016-01-03','CA',5258,36),
('2016-01-03','NY',4735,63),
('2016-01-03','MN',5783,87),
('2016-01-04','TX',5783,47),
('2016-01-04','CA',7854,85),
('2016-01-04','NY',4754,36),
('2016-01-04','MN',9345,24),
('2016-01-05','TX',2535,63),
('2016-01-05','CA',4678,73),
('2016-01-05','NY',2364,33),
('2016-01-05','MN',3452,25);
select * from marketing_data;

insert into store_revenue ( date , brand_id , store_location , revenue )
values
('2016-01-01',1,'United States-CA',100)
,('2016-01-01',1,'United States-TX',420)
,('2016-01-01',1,'United States-NY',142)
,('2016-01-02',1,'United States-CA',231)
,('2016-01-02',1,'United States-TX',2342)
,('2016-01-02',1,'United States-NY',232)
,('2016-01-03',1,'United States-CA',100)
,('2016-01-03',1,'United States-TX',420)
,('2016-01-03',1,'United States-NY',3245)
,('2016-01-04',1,'United States-CA',34)
,('2016-01-04',1,'United States-TX',3)
,('2016-01-04',1,'United States-NY',54)
,('2016-01-05',1,'United States-CA',45)
,('2016-01-05',1,'United States-TX',423)
,('2016-01-05',1,'United States-NY',234)
,('2016-01-01',2,'United States-CA',234)
,('2016-01-01',2,'United States-TX',234)
,('2016-01-01',2,'United States-NY',142)
,('2016-01-02',2,'United States-CA',234)
,('2016-01-02',2,'United States-TX',3423)
,('2016-01-02',2,'United States-NY',2342)
,('2016-01-03',2,'United States-CA',234234)
,('2016-01-06',3,'United States-TX',3)
,('2016-01-03',2,'United States-TX',3)
,('2016-01-03',2,'United States-NY',234)
,('2016-01-04',2,'United States-CA',2)
,('2016-01-04',2,'United States-TX',2354)
,('2016-01-04',2,'United States-NY',45235)
,('2016-01-05',2,'United States-CA',23)
,('2016-01-05',2,'United States-TX',4)
,('2016-01-05',2,'United States-NY',124);

select * from store_revenue;