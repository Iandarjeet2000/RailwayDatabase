CREATE trigger Cancelling ON Passengers
AFTER DELETE
AS
BEGIN

    SET NOCOUNT ON;
    INSERT INTO
    Cancel
    SELECT
        d.user_id,
        d.p_id,
        d.ticket_id
        'DEL'
    FROM
        deleted d;

    UPDATE 
    ticket
    set status='x'
    where ticket.ticket_no IN (select(d.ticket_id) from deleted as d);
END;