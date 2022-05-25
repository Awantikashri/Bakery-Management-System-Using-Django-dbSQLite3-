INSERT INTO bakerystore_customer (c_phone,c_fname,c_lname,c_address) VALUES
('7415018994','Palak','Singhal','D/102,Neelsidhi Society,Dharwad');

INSERT INTO bakerystore_product (p_name,p_price,p_descp) VALUES
('EC Overloaded Chocolate Cake',1500,'Flavour of Choice+Chocolate Overload top');
DELETE FROM bakerystore_order
WHERE id=23;

INSERT INTO bakerystore_discount (d_name,d_percent) VALUES
('NULL',0);

DELETE FROM bakerystore_orderlist
WHERE id<=27;

DELETE FROM bakerystore_bill
where id>=36;

DELETE FROM bakerystore_homedelivery
where id>=1;

DELETE FROM bakerystore_order
where id>=2;

DELETE FROM bakerystore_product WHERE id=3;
DELETE FROM bakerystore_customer where id>=3;
DELETE FROM bakerystore_orderlist WHERE ID>=1;


INSERT INTO bakerystore_customer (c_phone,c_fname,c_lname,c_address) VALUES
('7415018994','Palak','Singhal','D/102,Neelsidhi Society,Dharwad');

INSERT INTO bakerystore_customer (c_phone,c_fname,c_lname,c_address) VALUES
('7022699113','Mayur','Kanti','Gandhinagar,Dharwad');

INSERT INTO bakerystore_customer (c_phone,c_fname,c_lname,c_address) VALUES
('9980243307','Banashree','Bagalkoti','Shambhavi Colony,Dharwad');

INSERT INTO bakerystore_customer (c_phone,c_fname,c_lname,c_address) VALUES
('98866363643','Chetana','Kulkarni','Vidyagiri,Dharwad');

INSERT INTO bakerystore_customer (c_phone,c_fname,c_lname,c_address) VALUES
('9148009306','Pradnya','Shinde','Subhash Road,Dharwad');

INSERT INTO bakerystore_customer (c_phone,c_fname,c_lname,c_address) VALUES
('8547295907','Vinay','A','Kuldevta Apt, Malmaddi,Dharwad');

INSERT INTO bakerystore_order (order_amount,order_date, delivery_mode,customer_id,feedback) values
(560.0,'2021-05-28','pick-up',15,'NULL');

INSERT INTO bakerystore_order (order_amount,order_date, delivery_mode,customer_id,feedback) values
(550.0,'2021-04-29','pick-up',16,'NULL');

INSERT INTO bakerystore_order (order_amount,order_date, delivery_mode,customer_id,feedback) values
(1100.0,'2021-04-26','pick-up',18,'NULL');


INSERT INTO bakerystore_order (order_amount,order_date, delivery_mode,customer_id,feedback) values
(1400.0,'2021-05-02','pick-up',17,'NULL');

INSERT INTO bakerystore_order (order_amount,order_date, delivery_mode,customer_id,feedback) values
(700.0,'2021-05-04','pick-up',19,'NULL');

INSERT INTO bakerystore_order (order_amount,order_date, delivery_mode,customer_id,feedback) values
(600.0,'2021-05-10','pick-up',20,'NULL');

INSERT INTO bakerystore_supplier(s_name,s_phone,s_address)
values('Amingad Agencies','0836 27916320','Subhash Rd,Hosayellapur,Dharwad');

INSERT INTO bakerystore_supplier(s_name,s_phone,s_address)
values('Shri Raghavendra Enterprises','9886266827','Hirepeth,Hubli');

INSERT INTO bakerystore_supplier(s_name,s_phone,s_address)
values('Amar Traders','0836 2446382','Saptapur,Dharwad');

DELETE FROM bakerystore_customer
where id<=16;

DELETE FROM auth_user WHERE id=1;

INSERT INTO bakerystore_supplier(s_name,s_phone,s_address)
values('','','');

INSERT INTO bakerystore_invoice(order_date,receive_date,invoice_amount,invoice_num,supplier_id)
values('2021-05-04','',0.0,'111',1);


DELETE FROM bakerystore_product
where id>=1;

INSERT INTO bakerystore_product(p_name,p_price,p_descp) VALUES
('EC Overloaded Chocolate Cake',750,'Flavour of Choice+Chocolate Overloaded on top');

INSERT INTO bakerystore_product(p_name,p_price,p_descp) VALUES
('EC Kitkat Cake',700,'Flavour of choice+Surrounded by Kitkat');

INSERT INTO bakerystore_product(p_name,p_price,p_descp) VALUES
('EC Ferrero Rocher Cake',850,'Flavour of Choice+Topped with Ferrero Rocher');

INSERT INTO bakerystore_product(p_name,p_price,p_descp) VALUES
('EC Photo Print Cake',650,'Flavour of Choice+Customization');

INSERT INTO bakerystore_product(p_name,p_price,p_descp) VALUES
('EC Rainbow Cake',700,'Rainbow Patterned Cake');

INSERT INTO bakerystore_product(p_name,p_price,p_descp) VALUES
('TFF Lychee love',550,'Vanilla Sponge+Lychee Compote');

INSERT INTO bakerystore_product(p_name,p_price,p_descp) VALUES
('TFF Blue Collaberry',700,'Vanilla Sponge+Blueberry Compote');

INSERT INTO bakerystore_product(p_name,p_price,p_descp) VALUES
('TFF Pink Collaberry',700,'Vanilla/Chocolate Sponge+Strawberry Compote');

INSERT INTO bakerystore_product(p_name,p_price,p_descp) VALUES
('TFF The Secret Raspberry',700,'Vanilla/Chocolate Sponge+Raspberry Compote');

INSERT INTO bakerystore_product(p_name,p_price,p_descp) VALUES
('FC Royal Rasmalai',700,'Vanilla Sponge+Rasmalai');

INSERT INTO bakerystore_product(p_name,p_price,p_descp) VALUES
('FC Gulab Jamun Beauty',700,'Vanilla Sponge+Gulab Jamun');

INSERT INTO bakerystore_product(p_name,p_price,p_descp) VALUES
('FC Motichoor Vihar',700,'Vanilla Sponge+Motichoor');

INSERT INTO bakerystore_product(p_name,p_price,p_descp) VALUES
('CC The Black and White Saga',550,'Vanilla+Chocolate Sponge+Whipped Cream');

INSERT INTO bakerystore_product(p_name,p_price,p_descp) VALUES
('CC Creamy Cookie Crumble',550,'Vanilla Sponge+Oreo');

INSERT INTO bakerystore_product(p_name,p_price,p_descp) VALUES
('CC Creamy Cookie Crumble',600,'Chocolate Sponge+Oreo');

INSERT INTO bakerystore_product(p_name,p_price,p_descp) VALUES
('CC When Chocolate Met Peanut Butter',550,'Vanilla Sponge+Peanut Butter');

INSERT INTO bakerystore_product(p_name,p_price,p_descp) VALUES
('CC When Chocolate Met Peanut Butter',600,'Chocolate Sponge+Peanut Butter');

INSERT INTO bakerystore_product(p_name,p_price,p_descp) VALUES
('CC Cafe de Mocha',550,'Vanilla Sponge+Mocha Cream');

INSERT INTO bakerystore_product(p_name,p_price,p_descp) VALUES
('CC Cafe de Mocha',600,'Chocolate Sponge+Mocha Cream');

INSERT INTO bakerystore_product(p_name,p_price,p_descp) VALUES
('CC Salty Caramel Chaos',550,'Vanilla Sponge+Salted Caramel');


INSERT INTO bakerystore_product(p_name,p_price,p_descp) VALUES
('CC Salty Caramel Chaos',600,'Chocolate Sponge+Salted Caramel');


INSERT INTO bakerystore_product(p_name,p_price,p_descp) VALUES
('CC Salty Caramel Choco Mocha Chaos',600,'Chocolate Sponge+Salted Caramel+Mocha Cream');


INSERT INTO bakerystore_product(p_name,p_price,p_descp) VALUES
('CC Buttery Butterscotch',550,'Vanilla Sponge+Homemade Butterscotch Sauce');


INSERT INTO bakerystore_product(p_name,p_price,p_descp) VALUES
('CC Dark Nutella Rises',650,'Chocolate Sponge+Nutella');

INSERT INTO bakerystore_orderlist (ol_unit,ol_cost,ol_exp_date,order_id,product_id)
values (1,1.0,'2021-05-23',3,26);

INSERT INTO bakerystore_bill (bill_date,extra_charge,bill_amt,bill_discount_amount,balance,pay_mode,discount_id,order_id)
values ('2021-08-07',0.0,0.0,0,0,'upi',4);






INSERT INTO bakerystore_customer (c_phone,c_fname,c_lname,c_address) VALUES
('7415015667','Prachi','Vernekar','Sampige Apts,Kelgeri Road,Dharwad');

INSERT INTO bakerystore_customer (c_phone,c_fname,c_lname,c_address) VALUES
('8431818994','Chaitra','Kulkarni','Michigan Compound,Saptapur,Dharwad');

INSERT INTO bakerystore_customer (c_phone,c_fname,c_lname,c_address) VALUES
('9657940434','Sameeksha','Desai','24,Ambika Residency,Dharwad');

INSERT INTO bakerystore_customer (c_phone,c_fname,c_lname,c_address) VALUES
('6388752346','Vinayak','S','22,Deshpande Nagar,Hubli');

INSERT INTO bakerystore_customer (c_phone,c_fname,c_lname,c_address) VALUES
('8965422341','Harish','Kamat','Sampige Apts,Kelgeri Road,Dharwad');

INSERT INTO bakerystore_customer (c_phone,c_fname,c_lname,c_address) VALUES
('97765245672','Ankita','Hiremath','F1,Shambhvi Apts,Vidyagiri,Dharwad');

INSERT INTO bakerystore_customer (c_phone,c_fname,c_lname,c_address) VALUES
('9654728632','Esha','Hingmire','F22,Siddhivinayak Apts,Airport Road,Hubli');

INSERT INTO bakerystore_customer (c_phone,c_fname,c_lname,c_address) VALUES
('6548966231','Maitreyi','Rao','21,Ambika Nivas,Narayanpur,Dharwad');

INSERT INTO bakerystore_customer (c_phone,c_fname,c_lname,c_address) VALUES
('8073690117','Bhavana','Wadapi','424,Jaynagar,Dharwad');

INSERT INTO bakerystore_customer (c_phone,c_fname,c_lname,c_address) VALUES
('8310850106','Rachna','Sane','D/142,Neelsidhi Society,Dharwad');

INSERT INTO bakerystore_customer (c_phone,c_fname,c_lname,c_address) VALUES
('7434520966','Prarthana','D','Shree Nivas,KCD Road,Dharwad');

INSERT INTO bakerystore_customer (c_phone,c_fname,c_lname,c_address) VALUES
('7322856785','Celine','George','255,Michigan Compound,Dharwad');

INSERT INTO bakerystore_customer (c_phone,c_fname,c_lname,c_address) VALUES
('6874435621','Akash','Hebbal','Shambhvi Colony,Gandhinagar,Dharwad');

INSERT INTO bakerystore_customer (c_phone,c_fname,c_lname,c_address) VALUES
('9332478566','Aditya','Hanchinmani','F22,Kuldevta Apts,Dharwad');

INSERT INTO bakerystore_customer (c_phone,c_fname,c_lname,c_address) VALUES
('9665213400','Shlok','Bagalkoti','23,Raghavendra Nivas,Jayanagar,Dharwad');

INSERT INTO bakerystore_customer (c_phone,c_fname,c_lname,c_address) VALUES
('7335789124','Shweta','Rao','23,Siddhivinayak Apts,Tarihal,Hubli');

INSERT INTO bakerystore_customer (c_phone,c_fname,c_lname,c_address) VALUES
('9008764532','Shreeya','Kulkarni','D22,NeelSiddhi Society,Dharwad');

INSERT INTO bakerystore_customer (c_phone,c_fname,c_lname,c_address) VALUES
('856912378','Prashant','Hegde','272, Deshpande nagar,Hubli');

INSERT INTO bakerystore_customer (c_phone,c_fname,c_lname,c_address) VALUES
('8888832186','Neha','Dikshit','522,Joshi Apts,Malmaddi,Dharwad');

INSERT INTO bakerystore_customer (c_phone,c_fname,c_lname,c_address) VALUES
('8431810054','Shaila','Puranik','234,Abhay Nilay,Vidyanagar,Hubli');



INSERT INTO bakerystore_invoice (order_date,receive_date,invoice_amount,invoice_num,supplier_id,invoice_status)
VALUES ('2021-04-14','2021-04-19',2560.0,'11000',1,'received');

INSERT INTO bakerystore_invoice (order_date,receive_date,invoice_amount,invoice_num,supplier_id,invoice_status)
VALUES ('2021-04-30','2021-05-03',890.0,'12001',1,'received');

INSERT INTO bakerystore_invoice (order_date,receive_date,invoice_amount,invoice_num,supplier_id,invoice_status)
VALUES ('2021-05-05','2021-05-09',930.0,'16200',2,'received');

INSERT INTO bakerystore_invoice (order_date,receive_date,invoice_amount,invoice_num,supplier_id,invoice_status)
VALUES ('2021-04-21','2021-04-23',1000.0,'14000',1,'received');

INSERT INTO bakerystore_invoice (order_date,receive_date,invoice_amount,invoice_num,supplier_id,invoice_status)
VALUES ('2021-04-07','2021-04-09',280.0,'11220',3,'received');

INSERT INTO bakerystore_invoice (order_date,receive_date,invoice_amount,invoice_num,supplier_id,invoice_status)
VALUES ('2021-04-11','2021-04-15',3000.0,'11030',3,'received');






INSERT INTO bakerystore_order (id,order_amount,order_date, delivery_mode,customer_id,feedback) values
(1,850.0,'2021-04-05','pick-up',15,'NULL');
INSERT INTO bakerystore_orderlist (id,ol_unit,ol_cost,ol_exp_date,order_id,product_id,created)
values (1,2,1700,'2021-04-05',1,27,'2021-04-05');
INSERT INTO bakerystore_bill (id,bill_date,extra_charge,bill_amt,bill_discount_amount,balance,pay_mode,discount_id,order_id)
values (1,'2021-04-05',50.0,1750.0,0,0,'upi',0,1);



INSERT INTO bakerystore_order (id,order_amount,order_date, delivery_mode,customer_id,feedback) values
(2,650.0,'2021-04-06','pick-up',16,'NULL');
INSERT INTO bakerystore_orderlist (id,ol_unit,ol_cost,ol_exp_date,order_id,product_id,created)
values (2,1,650,'2021-04-06',2,28,'2021-04-06');
INSERT INTO bakerystore_bill (id,bill_date,extra_charge,bill_amt,bill_discount_amount,balance,pay_mode,discount_id,order_id)
values (2,'2021-04-06',100.0,750.0,0,0,'cash',0,2);

INSERT INTO bakerystore_order (id,order_amount,order_date, delivery_mode,customer_id,feedback) values
(3,1400.0,'2021-04-08','pick-up',17,'NULL');
INSERT INTO bakerystore_orderlist (id,ol_unit,ol_cost,ol_exp_date,order_id,product_id,created)
values (3,2,1400,'2021-04-08',3,35,'2021-04-08');
INSERT INTO bakerystore_bill (id,bill_date,extra_charge,bill_amt,bill_discount_amount,balance,pay_mode,discount_id,order_id)
values (3,'2021-04-08',0.0,1400.0,0,0,'upi',0,3);

INSERT INTO bakerystore_order (id,order_amount,order_date, delivery_mode,customer_id,feedback) values
(4,550.0,'2021-04-11','pick-up',18,'NULL');
INSERT INTO bakerystore_orderlist (id,ol_unit,ol_cost,ol_exp_date,order_id,product_id,created)
values (4,1,550,'2021-04-11',4,40,'2021-04-11');
INSERT INTO bakerystore_bill (id,bill_date,extra_charge,bill_amt,bill_discount_amount,balance,pay_mode,discount_id,order_id)
values (4,'2021-04-11',100.0,650.0,0,0,'upi',0,4);

INSERT INTO bakerystore_order (id,order_amount,order_date, delivery_mode,customer_id,feedback) values
(5,550.0,'2021-04-12','pick-up',19,'NULL');
INSERT INTO bakerystore_orderlist (id,ol_unit,ol_cost,ol_exp_date,order_id,product_id,created)
values (5,1,550,'2021-04-12',5,38,'2021-04-12');
INSERT INTO bakerystore_bill (id,bill_date,extra_charge,bill_amt,bill_discount_amount,balance,pay_mode,discount_id,order_id)
values (5,'2021-04-12',50.0,600.0,0,0,'upi',0,5);


INSERT INTO bakerystore_order (id,order_amount,order_date, delivery_mode,customer_id,feedback) values
(6,750.0,'2021-04-18','pick-up',20,'NULL');
INSERT INTO bakerystore_orderlist (id,ol_unit,ol_cost,ol_exp_date,order_id,product_id,created)
values (6,2,750,'2021-04-18',6,25,'2021-04-18');
INSERT INTO bakerystore_bill (id,bill_date,extra_charge,bill_amt,bill_discount_amount,balance,pay_mode,discount_id,order_id)
values (6,'2021-04-18',150.0,900.0,0,0,'upi',0,6);

INSERT INTO bakerystore_order (id,order_amount,order_date, delivery_mode,customer_id,feedback) values
(7,850.0,'2021-04-29','pick-up',21,'NULL');
INSERT INTO bakerystore_orderlist (id,ol_unit,ol_cost,ol_exp_date,order_id,product_id,created)
values (7,2,1700,'2021-04-29',7,27,'2021-04-29');
INSERT INTO bakerystore_bill (id,bill_date,extra_charge,bill_amt,bill_discount_amount,balance,pay_mode,discount_id,order_id)
values (7,'2021-04-29',50.0,1750.0,0,0,'upi',0,7);

INSERT INTO bakerystore_order (id,order_amount,order_date, delivery_mode,customer_id,feedback) values
(8,550.0,'2021-05-07','pick-up',22,'NULL');
INSERT INTO bakerystore_orderlist (id,ol_unit,ol_cost,ol_exp_date,order_id,product_id,created)
values (8,1,550,'2021-05-07',8,30,'2021-05-07');
INSERT INTO bakerystore_bill (id,bill_date,extra_charge,bill_amt,bill_discount_amount,balance,pay_mode,discount_id,order_id)
values (8,'2021-05-07',0.0,550.0,0,0,'upi',0,8);


INSERT INTO bakerystore_order (id,order_amount,order_date, delivery_mode,customer_id,feedback) values
(9,650.0,'2021-05-17','pick-up',23,'NULL');
INSERT INTO bakerystore_orderlist (id,ol_unit,ol_cost,ol_exp_date,order_id,product_id,created)
values (9,1,650,'2021-05-17',9,28,'2021-05-17');
INSERT INTO bakerystore_bill (id,bill_date,extra_charge,bill_amt,bill_discount_amount,balance,pay_mode,discount_id,order_id)
values (9,'2021-05-17',100.0,750.0,0,0,'cash',0,9);

INSERT INTO bakerystore_order (id,order_amount,order_date, delivery_mode,customer_id,feedback) values
(10,550.0,'2021-05-17','pick-up',24,'NULL');
INSERT INTO bakerystore_orderlist (id,ol_unit,ol_cost,ol_exp_date,order_id,product_id,created)
values (10,1,550,'2021-05-17',10,37,'2021-05-17');
INSERT INTO bakerystore_bill (id,bill_date,extra_charge,bill_amt,bill_discount_amount,balance,pay_mode,discount_id,order_id)
values (10,'2021-05-17',50.0,600.0,0,0,'upi',0,10);

INSERT INTO bakerystore_order (id,order_amount,order_date, delivery_mode,customer_id,feedback) values
(11,700.0,'2021-05-18','home',25,'NULL');
INSERT INTO bakerystore_orderlist (id,ol_unit,ol_cost,ol_exp_date,order_id,product_id,created)
values (11,1,700,'2021-05-18',11,31,'2021-05-18');
INSERT INTO bakerystore_bill (id,bill_date,extra_charge,bill_amt,bill_discount_amount,balance,pay_mode,discount_id,order_id)
values (11,'2021-05-18',0.0,700.0,0,0,'upi',0,11);
INSERT INTO bakerystore_homedelivery(id,hd_address,hd_date,hd_time,hd_instruction,order_id)
VALUES (1,'Sampige Apts,Kelgeri Road,Dharwad','2021-05-19','18:00:00','None',11);



INSERT INTO bakerystore_order (id,order_amount,order_date, delivery_mode,customer_id,feedback) values
(12,1400.0,'2021-05-19','pick-up',26,'NULL');
INSERT INTO bakerystore_orderlist (id,ol_unit,ol_cost,ol_exp_date,order_id,product_id,created)
values (12,2,1400,'2021-05-19',12,35,'2021-05-19');
INSERT INTO bakerystore_bill (id,bill_date,extra_charge,bill_amt,bill_discount_amount,balance,pay_mode,discount_id,order_id)
values (12,'2021-05-19',0.0,1400.0,0,0,'upi',0,12);

INSERT INTO bakerystore_order (id,order_amount,order_date, delivery_mode,customer_id,feedback) values
(13,700.0,'2021-05-20','pick-up',27,'NULL');
INSERT INTO bakerystore_orderlist (id,ol_unit,ol_cost,ol_exp_date,order_id,product_id,created)
values (13,1,700,'2021-05-20',13,34,'2021-05-20');
INSERT INTO bakerystore_bill (id,bill_date,extra_charge,bill_amt,bill_discount_amount,balance,pay_mode,discount_id,order_id)
values (13,'2021-05-20',100,800.0,0,0,'upi',0,13);

INSERT INTO bakerystore_order (id,order_amount,order_date, delivery_mode,customer_id,feedback) values
(14,1400.0,'2021-05-22','home',28,'NULL');
INSERT INTO bakerystore_orderlist (id,ol_unit,ol_cost,ol_exp_date,order_id,product_id,created)
values (14,2,1400,'2021-05-22',14,32,'2021-05-22');
INSERT INTO bakerystore_bill (id,bill_date,extra_charge,bill_amt,bill_discount_amount,balance,pay_mode,discount_id,order_id)
values (14,'2021-05-22',0.0,1400.0,0,0,'cash',0,14);
INSERT INTO bakerystore_homedelivery(id,hd_address,hd_date,hd_time,hd_instruction,order_id)
VALUES (2,'Ambika Nivas,Narayanpur,Dharwad','2021-05-22','17:30:00','None',14);

INSERT INTO bakerystore_order (id,order_amount,order_date, delivery_mode,customer_id,feedback) values
(15,700.0,'2021-05-22','pick-up',29,'NULL');
INSERT INTO bakerystore_orderlist (id,ol_unit,ol_cost,ol_exp_date,order_id,product_id,created)
values (15,1,700,'2021-05-22',15,33,'2021-05-22');
INSERT INTO bakerystore_bill (id,bill_date,extra_charge,bill_amt,bill_discount_amount,balance,pay_mode,discount_id,order_id)
values (15,'2021-05-22',0.0,700.0,0,0,'upi',0,15);



INSERT INTO bakerystore_order (id,order_amount,order_date, delivery_mode,customer_id,feedback) values
(16,700.0,'2021-05-23','home',30,'NULL');
INSERT INTO bakerystore_orderlist (id,ol_unit,ol_cost,ol_exp_date,order_id,product_id,created)
values (16,1,700,'2021-05-23',16,36,'2021-05-23');
INSERT INTO bakerystore_bill (id,bill_date,extra_charge,bill_amt,bill_discount_amount,balance,pay_mode,discount_id,order_id)
values (16,'2021-05-23',0.0,700.0,0,0,'upi',0,16);
INSERT INTO bakerystore_homedelivery(id,hd_address,hd_date,hd_time,hd_instruction,order_id)
VALUES (3,'D/142,Neelsidhi Society,Dharwad','2021-05-24','17:30:00','None',16);

INSERT INTO bakerystore_order (id,order_amount,order_date, delivery_mode,customer_id,feedback) values
(17,550.0,'2021-05-25','home',31,'NULL');
INSERT INTO bakerystore_orderlist (id,ol_unit,ol_cost,ol_exp_date,order_id,product_id,created)
values (17,1,550,'2021-05-25',17,27,'2021-05-25');
INSERT INTO bakerystore_bill (id,bill_date,extra_charge,bill_amt,bill_discount_amount,balance,pay_mode,discount_id,order_id)
values (17,'2021-05-25',0.0,550.0,0,0,'upi',0,17);
INSERT INTO bakerystore_homedelivery(id,hd_address,hd_date,hd_time,hd_instruction,order_id)
VALUES (4,'Shree Nivas, KCD Road,Dharwad','2021-05-25','18:30:00','None',17);

INSERT INTO bakerystore_order (id,order_amount,order_date, delivery_mode,customer_id,feedback) values
(18,1500.0,'2021-05-25','pick-up',32,'NULL');
INSERT INTO bakerystore_orderlist (id,ol_unit,ol_cost,ol_exp_date,order_id,product_id,created)
values (18,2,1500,'2021-05-25',18,25,'2021-05-25');
INSERT INTO bakerystore_bill (id,bill_date,extra_charge,bill_amt,bill_discount_amount,balance,pay_mode,discount_id,order_id)
values (18,'2021-05-25',100,1600.0,0,0,'upi',0,18);



INSERT INTO bakerystore_order (id,order_amount,order_date, delivery_mode,customer_id,feedback) values
(19,850.0,'2021-05-26','home',33,'NULL');
INSERT INTO bakerystore_orderlist (id,ol_unit,ol_cost,ol_exp_date,order_id,product_id,created)
values (19,1,850,'2021-05-26',19,37,'2021-05-26');
INSERT INTO bakerystore_bill (id,bill_date,extra_charge,bill_amt,bill_discount_amount,balance,pay_mode,discount_id,order_id)
values (19,'2021-05-26',0.0,850.0,0,0,'upi',0,19);
INSERT INTO bakerystore_homedelivery(id,hd_address,hd_date,hd_time,hd_instruction,order_id)
VALUES (5,'Shambhavi Colony,Gandhinagar, Dharwad','2021-05-27','19:00:00','None',19);

INSERT INTO bakerystore_order (id,order_amount,order_date, delivery_mode,customer_id,feedback) values
(20,550.0,'2021-05-27','home',34,'NULL');
INSERT INTO bakerystore_orderlist (id,ol_unit,ol_cost,ol_exp_date,order_id,product_id,created)
values (20,1,550,'2021-05-27',20,38,'2021-05-27');
INSERT INTO bakerystore_bill (id,bill_date,extra_charge,bill_amt,bill_discount_amount,balance,pay_mode,discount_id,order_id)
values (20,'2021-05-27',150.0,700.0,0,0,'upi',0,20);
INSERT INTO bakerystore_homedelivery(id,hd_address,hd_date,hd_time,hd_instruction,order_id)
VALUES (6,'Kuldevta Apt, Malmaddi, Dharwad','2021-05-28','18:30:00','None',20);


INSERT INTO bakerystore_order (id,order_amount,order_date, delivery_mode,customer_id,feedback) values
(21,600.0,'2021-05-27','home',35,'NULL');
INSERT INTO bakerystore_orderlist (id,ol_unit,ol_cost,ol_exp_date,order_id,product_id,created)
values (21,1,600,'2021-05-27',21,39,'2021-05-27');
INSERT INTO bakerystore_bill (id,bill_date,extra_charge,bill_amt,bill_discount_amount,balance,pay_mode,discount_id,order_id)
values (21,'2021-05-27',50.0,650.0,0,0,'upi',0,21);
INSERT INTO bakerystore_homedelivery(id,hd_address,hd_date,hd_time,hd_instruction,order_id)
VALUES (7,'23,Raghavendra Nivas,Jayanagar,Dharwad','2021-05-29','17:30:00','None',21);

INSERT INTO bakerystore_order (id,order_amount,order_date, delivery_mode,customer_id,feedback) values
(22,550.0,'2021-05-27','pick-up',36,'NULL');
INSERT INTO bakerystore_orderlist (id,ol_unit,ol_cost,ol_exp_date,order_id,product_id,created)
values (22,1,550,'2021-05-27',22,40,'2021-05-27');
INSERT INTO bakerystore_bill (id,bill_date,extra_charge,bill_amt,bill_discount_amount,balance,pay_mode,discount_id,order_id)
values (22,'2021-05-27',100.0,650.0,0,0,'upi',0,22);


INSERT INTO bakerystore_order (id,order_amount,order_date, delivery_mode,customer_id,feedback) values
(23,750.0,'2021-05-28','pick-up',37,'NULL');
INSERT INTO bakerystore_orderlist (id,ol_unit,ol_cost,ol_exp_date,order_id,product_id,created)
values (23,2,750,'2021-05-28',23,25,'2021-05-28');
INSERT INTO bakerystore_bill (id,bill_date,extra_charge,bill_amt,bill_discount_amount,balance,pay_mode,discount_id,order_id)
values (23,'2021-05-28',150.0,900.0,0,0,'upi',0,23);


INSERT INTO bakerystore_order (id,order_amount,order_date, delivery_mode,customer_id,feedback) values
(24,700.0,'2021-05-28','home',38,'NULL');
INSERT INTO bakerystore_orderlist (id,ol_unit,ol_cost,ol_exp_date,order_id,product_id,created)
values (24,1,700,'2021-05-28',18,26,'2021-05-28');
INSERT INTO bakerystore_bill (id,bill_date,extra_charge,bill_amt,bill_discount_amount,balance,pay_mode,discount_id,order_id)
values (24,'2021-05-28',50.0,750.0,0,0,'upi',0,24);
INSERT INTO bakerystore_homedelivery(id,hd_address,hd_date,hd_time,hd_instruction,order_id)
VALUES (8,'22,Deshpande Nagar,Hubli','2021-05-29','17:30:00','None',24);

INSERT INTO bakerystore_order (id,order_amount,order_date, delivery_mode,customer_id,feedback) values
(25,1400.0,'2021-05-29','pick-up',39,'NULL');
INSERT INTO bakerystore_orderlist (id,ol_unit,ol_cost,ol_exp_date,order_id,product_id,created)
values (25,2,1400,'2021-05-29',25,26,'2021-05-29');
INSERT INTO bakerystore_bill (id,bill_date,extra_charge,bill_amt,bill_discount_amount,balance,pay_mode,discount_id,order_id)
values (25,'2021-03-29',100.0,1500.0,0,0,'upi',0,25);


INSERT INTO bakerystore_order (id,order_amount,order_date, delivery_mode,customer_id,feedback) values
(26,550.0,'2021-05-29','pick-up',40,'NULL');
INSERT INTO bakerystore_orderlist (id,ol_unit,ol_cost,ol_exp_date,order_id,product_id,created)
values (26,1,550,'2021-05-29',26,38,'2021-05-29');
INSERT INTO bakerystore_bill (id,bill_date,extra_charge,bill_amt,bill_discount_amount,balance,pay_mode,discount_id,order_id)
values (26,'2021-05-29',50.0,600.0,0,0,'upi',0,26);

DELETE FROM bakerystore_customer where id=78;