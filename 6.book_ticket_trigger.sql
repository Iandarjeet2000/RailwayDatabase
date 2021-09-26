CREATE TRIGGER book_ticket
ON Passengers
AFTER INSERT
AS
BEGIN
SET NOCOUNT ON;
INSERT INTO
    Books
    SELECT 
    i.ticket_id,
    i.p_id
    'INS'
    FROM 
    inserted i 
END;