// The current time of your AuctionBase system can only advance forward in time, not backward in time

PRAGMA foreign_keys = ON;

drop trigger if exists trigger7;

create trigger trigger7
before update ON Time
for each row 
when exists ( 
  SELECT * 
  FROM Time 
  WHERE new.Time <= Time
) 

BEGIN 
  SELECT raise (rollback, "The current time of the system can only go forward. Update should be greater than the current time.");
END;

