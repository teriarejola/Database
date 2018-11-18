DROP TABLE IF EXISTS Item;
DROP TABLE IF EXISTS Users;
DROP TABLE IF EXISTS Bids;
DROP TABLE IF EXISTS Category;
DROP TABLE IF EXISTS Time;
 
CREATE TABLE Item(
  ItemID int PRIMARY KEY,
  SellerID varchar(300),
  Name string,
  Buy_Price float,
  First_Bid float,
  Currently float,
  Number_of_Bids int,
  Started DATETIME,
  Ends DATETIME CHECK(started > ends),
  Description string
  FOREIGN KEY (SellerID) REFERENCES Users(UserID));

CREATE TABLE Users(
  UserID varchar(300) PRIMARY KEY,
  Rating int,
  Location string,
  Country string);

CREATE TABLE Bids(
  ItemID int,
  UserID varchar(300),
  Time DATETIME,
  Amount float
  FOREIGN KEY (ItemID) REFERENCES Item(ItemID);
  FOREIGN KEY (UserID) REFERENCES Users(UserID));

CREATE TABLE Category(
  ItemID int,
  Category string,
  FOREIGN KEY (ItemID) REFERENCES Item(ItemID));

CREATE TABLE Time(
   currentTime DATETIME);
   
INSERT INTO Time(currentTime)
VALUES(2001-12-20 00:00:01);
SELECT *
FROM Time;

