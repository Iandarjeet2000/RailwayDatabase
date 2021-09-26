  
insert into Users values (1,'Ram','m',32,9845321456, 'Karnataka','Bangalore', '560037')
insert into Users values (2,'Mahesh','M',36,9847821456,'Goa','Panaji','403001')
insert into Users values (3,'Angelia','f',23,9898764560,'West Bengal', 'Kolkata', '700001')
insert into Users values (4,'helen','f', 27, 7019421456, 'Karnataka', 'Bangalore', '560001')
insert into Users values (5,'Aradhya','f',30,9798691456,'Karnataka','Mangalore', '570039')

insert into Train values (10000,'Duronto exp','11:30:00','04:00:00',2,'20200410')
insert into Train values (10001,'Shatabdi exp','21:30:00','10:00:00',3,'20200421'),
(10002,'Panaji exp','21:30:00','10:00:00',2,'20200415'),
(10003,'Mysuru special','13:30:00','04:00:00',1,'20200413'),
(10004,'Mum-kol exp','21:30:00','10:00:00',3,'20200413')

insert into Station values (1,'Howrah',12,'11:30:00')
insert into Station values (2,'KR Puram',10,'21:30:00'),
(3,'Panaji',10,'21:30:00'),
(4,'Mysore',111,'13:30:00'),
(5,'Shivaji_terminal',30,'21:30:00')

insert into Start_at VALUES(10000,1),(10001,2),(10002,3),(10003,2),(10004,5)
insert into Stop_at VALUES(10000,2),(10001,5),(10002,2),(10003,4),(10004,1)

insert into Train_stats values (10000,5,5,2500)
insert into Train_stats values (10001,5,5,1500),(10002,5,5,1000),(10003,5,5,500),(10004,5,5,3500)

insert into Reaches VALUES(10000,1,'4:10:00'),(10001,2,'10:01:00'),(10002,3,'10:30:50'),(10003,4,'4:05:00'),(10004,5,'4:00:00')