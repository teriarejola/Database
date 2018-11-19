// In every auction, the Number of Bids attribute corresponds to the actual number of bids for that particular item

PRAGMA foreign_keys = ON;

drop trigger if exists trigger4;

create trigger trigger4
after insert ON Bids 
for each row 

BEGIN 
    Update Item 
    SET Number_of_Bids = Number_of_Bids + 1
    WHERE ItemID = new.ItemID 
END; 
