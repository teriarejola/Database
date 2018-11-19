// No auction may have a bid before its start time or after its end time

PRAGMA foreign_keys = ON;

drop trigger if exists trigger3;

create trigger trigger3
after insert ON Bids
for each row
when exists (
    SELECT *
    FROM Item 
    WHERE ItemID = new.ItemID AND 
    new.Time < Started OR
    new.Time > Ends
)

BEGIN 
    SELECT raise (rollback, 'The bid should be made within the auction's start and end time.')
END; 
              
              
