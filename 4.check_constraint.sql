alter table Users add CONSTRAINT "check_userid" check(user_id>0)
alter table Passengers add CONSTRAINT "check_pid" check(p_id>0)
alter table Passengers add CONSTRAINT "check_agep" check(age>0)
alter table Users add CONSTRAINT "check_ageu" check(age>0)
alter table Station add CONSTRAINT "s_no" check(station_no>0)
alter table ticket add CONSTRAINT "ticket_id" check(ticket_no>0)
alter table Train add CONSTRAINT "train_no" check(train_no>0)
alter table Users add CONSTRAINT "mob" check(mobile_no like replicate('[0-9]',10))