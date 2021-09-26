create DATABASE railwayDB
use railwayDB

create table Users(user_id int NOT NULL, name varchar(20),gender varchar(2) check(gender in ('M','F','m','f')),age int, mobile_no VARCHAR(20), state varchar(20), city varchar(20), pin varchar(10),primary key(user_id))

create table Passengers(p_id int NOT NULL,user_id int NOT NULL,ticket_id int NOT NULL,name varchar(20) NOT NULL,age int, book_date date,primary key(p_id))

create table Station(station_no int NOT NULL,station_name varchar(30) NOT NULL,hault int,arrival_time time)
alter table Station add constraint station_no primary key(station_no)

create table Train(train_no int NOT NULL, train_name varchar(30),arrival_time time, dept_time time,availabilty int,Date date, primary key(train_no))

create table Train_stats(train_id int NOT NULL,ac_seats int, non_ac_seats int,base_fare int)

create table ticket(ticket_no int NOT NULL,user_id int NOT NULL,status varchar(2),Ac_nonAc varchar(2),fare int,train_no int NOT NULL)

alter table ticket add constraint ticket_no primary key(ticket_no)

create table Cancel(user_id int ,p_id int ,ticket_id int )

create table Books(ticket_id int,p_id int)

create table Stop_at(train_no int NOT NULL,station_no int NOT NULL)

create table Start_at(train_no int NOT NULL,station_no int NOT NULL)

create table Reaches(train_no int NOT NULL,station_no int NOT NULL,arr_time time)





alter table Passengers add constraint p2 foreign key(ticket_id) references ticket(ticket_no)

alter table Passengers add constraint p1 foreign key(user_id) references Users(user_id)

alter table ticket add constraint ti1 foreign key(user_id) references Users(user_id)

alter table ticket add constraint ti2 foreign key(train_no) references Train(train_no)

alter table Train_stats add constraint train_id foreign key(train_id) references Train(train_no) on update cascade on delete cascade

alter table Stop_at add constraint t1 foreign key(train_no) references Train (train_no) on update cascade on delete cascade

alter table Stop_at add constraint s1 foreign key(station_no) references Station (station_no) on update cascade on delete cascade

alter table Start_at add constraint t2 foreign key(train_no) references Train (train_no) on update cascade on delete cascade

alter table Start_at add constraint s2 foreign key(station_no) references Station (station_no) on update cascade on delete cascade

alter table Reaches add constraint t3 foreign key(train_no) references Train (train_no) on update cascade on delete cascade

alter table Reaches add constraint s3 foreign key(station_no) references Station (station_no) on update cascade on delete cascade