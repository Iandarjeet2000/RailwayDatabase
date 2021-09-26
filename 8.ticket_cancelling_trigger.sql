  
CREATE trigger ticket_cancel ON ticket
FOR UPDATE
AS
BEGIN
    DECLARE @option VARCHAR
    DECLARE @base_fare int
    DECLARE @stats VARCHAR
    select @option=i.Ac_nonAc FROM inserted i

    select @stats=i.status FROM inserted i
    if(@stats='x')
    BEGIN
        if(@option='a')
        BEGIN
            UPDATE Train_stats SET ac_seats=ac_seats+1 WHERE train_id=(select train_no from inserted)
            UPDATE ticket SET fare=0  WHERE ticket_no=(select ticket_no from inserted)
            UPDATE ticket SET Ac_nonAc='X' WHERE ticket_no=(select ticket_no from inserted)
        END
        ELSE IF(@option='n')
        BEGIN
            UPDATE Train_stats SET non_ac_seats=ac_seats+1 WHERE train_id=(select train_no from inserted)
            UPDATE ticket SET fare=0  WHERE ticket_no=(select ticket_no from inserted)
            UPDATE ticket SET Ac_nonAc='X' WHERE ticket_no=(select ticket_no from inserted)
        END
    END
END;