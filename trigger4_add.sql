PRAGMA foreign_keys = ON;

drop trigger if exists trigger4;

create trigger trigger4

after insert on bids 
for each row 

BEGIN 
    Update Item 
    SET Number_of_Bids = Number_of_Bids + 1
    WHERE ItemID = new.ItemID 
END; 
