PRAGMA foreign_keys = ON;

drop trigger if exists trigger3;

create trigger trigger3

after insert ON item 
for each row
when exists (
    SELECT *
    FROM Item 
    WHERE Item_ID = new.Item_ID AND 
    new.Started >= new.Ends
) 

BEGIN 
SELECT raise (rollback, 'An auction can't ends before it starts.')
END; 
