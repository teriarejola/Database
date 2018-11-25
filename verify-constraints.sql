SELECT sellerID
FROM Item
WHERE NOT IN (SELECT userID
              FROM Users);
              
SELECT bidderID
FROM Bids
WHERE NOT IN (SELECT userID
              FROM Users);

SELECT ItemID
FROM Bids
WHERE NOT IN (SELECT ItemID
              FROM Items);
              
SELECT ItemID
FROM Category
WHERE NOT IN (SELECT ItemID
              FROM Item);
