// Any new bid for a particular item must have a higher amount than any of the previous bids for that particular item

PRAGMA foreign_keys = ON;

drop trigger if exists trigger5;

create trigger trigger5
before insert ON Bids 
for each row 

when exists(
	SELECT *
	FROM Item
	WHERE new.Amount <- Currently AND 
  ItemID = new.ItemID
)
  
BEGIN
	SELECT raise (rollback, 'The bid amount must be greater than the highest bid for the item.');
END;

