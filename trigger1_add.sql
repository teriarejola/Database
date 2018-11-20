-- The Current Price of an item must always match the Amount of the most recent bid for that item

PRAGMA foreign_keys= ON;

drop trigger if exists trigger1;

create trigger triger1
after insert ON bids 
for each row 

BEGIN 
    UPDATE Item 
    SET Currently = new.Amount
    WHERE ItemID = new.ItemID;
END;

