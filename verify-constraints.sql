SELECT *
FROM Users
WHERE NOT IN (SELECT sellerID
              FROM Item) AND
              NOT IN (SELECT bidderID
                      FROM Bids);

SELECT *
FROM Item
WHERE NOT IN (SELECT ItemID
              FROM Bids);
              
SELECT *
FROM Item
WHERE NOT IN (SELECT ItemID
              FROM Category);
