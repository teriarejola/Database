// All new bids must be placed at the time which matches the current time of your AuctionBase system.

PRAGMA foreign_keys = ON;

drop trigger if exists trigger6;

create trigger trigger6
before insert ON Bids 
for each row 

when exists (
  SELECT *
	FROM Time
	WHERE new.Time <> Time 
)

BEGIN 
  SELECT raise (rollback, "The bid time should match the current time of system.");
END;


