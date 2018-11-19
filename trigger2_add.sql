// A user may not bid on an item he or she is also selling

PRAGMA foreign_keys = ON;

drop trigger if exists trigger2;

create trigger trigger2
before insert ON bids
for each row
when exists (
  SELECT SellerID
  FROM Items
  WHERE new.UserID = SellerID)

BEGIN 
    SELECT raise (rollback, 'You may not bid on an item you are selling.')
END;

