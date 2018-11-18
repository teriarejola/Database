PRAGMA foreign_keys= ON;

drop trigger if exists trigger1;

create trigger triger1
after insert ON bid 
for each row 

BEGIN 
    UPDATE Item 
    SET Currently = new.Amount
    WHERE ItemID = new.ItemID
END;

