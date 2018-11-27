/* For #2 (All sellers and bidders must already exist as users) */

SELECT sellerID
FROM Item
WHERE NOT IN (SELECT userID
              FROM Users);
              
SELECT bidderID
FROM Bids
WHERE NOT IN (SELECT userID
              FROM Users);
              
/* For #4 (Every bid must correspond to an actual item) */

SELECT ItemID
FROM Bids
WHERE NOT IN (SELECT ItemID
              FROM Items);
              
/* For #5 (The items for a given category must all exist) */

SELECT ItemID
FROM Category
WHERE NOT IN (SELECT ItemID
              FROM Item);
