CREATE trigger check_avail ON ticket
FOR INSERT
AS
BEGIN
DECLARE @option VARCHAR
DECLARE @num_seat int
DECLARE @base_fare int
SELECT @base_fare=base_fare FROM Train_stats WHERE train_id=(select train_no from inserted)
select @option=i.Ac_nonAc FROM inserted i
if(@option='a')
    BEGIN
    SELECT @num_seat=ac_seats FROM Train_stats WHERE train_id=(select train_no from inserted)
    
    if(@num_seat<=0)
        UPDATE ticket SET status='NC'  WHERE ticket_no=(select ticket_no from inserted)
    ELSE
        BEGIN
            UPDATE Train_stats SET ac_seats=ac_seats-1 WHERE train_id=(select train_no from inserted)
            UPDATE ticket SET status='C' WHERE ticket_no=(select ticket_no from inserted)
            UPDATE ticket SET fare=@base_fare+200 WHERE ticket_no=(select ticket_no from inserted)
        END
    END
if(@option='n')
    BEGIN
    SELECT @num_seat=non_ac_seats FROM Train_stats WHERE train_id=(select train_no from inserted)
    if(@num_seat<=0)
        UPDATE ticket SET status='NC'  WHERE train_no=(select train_no from inserted)
    ELSE
        BEGIN
            UPDATE Train_stats SET non_ac_seats=non_ac_seats-1 WHERE train_id=(select train_no from inserted)
            UPDATE ticket SET status='C' WHERE ticket_no=(select ticket_no from inserted)
            UPDATE ticket SET fare=@base_fare+50 WHERE ticket_no=(select ticket_no from inserted)
        END
    END
END;