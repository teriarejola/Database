import sqlite3
sqlite_file = "./Auction_Base.db"

itemTable  = "item"
categoryTable = "category"
bidTable = "bid"
userTable = "user"
itemID = "itemID"
category = "categoryName"
description = "description"
minPrice = "first_bid"
maxPrice = "currently"

# connect to the database
conn = sqlite3.connect(AuctionBase.db)
c = conn.cursor()

userAction = sys.argv[1]
tables[]
count = 0;

if userAction == search:
    for i in range (2, len(sys.argv)):
        user_input = re.split('=', str(sys.argv[i]))
        if (user_input[i] == "table"):
            table_name = user_input[i + 1]
        if (user_input[i] == "condition"):
            condition = user_input[i + 1]
		    c.execute('SELECT * FROM {tn} WHERE {cn}).
            format(tn = table_name, cn=condition)
        all_rows = c.fetchall()
        tables[i] = all_rows
		    count++
    i = count - 1
    while i > 1
        c.execute(‘tables[i] UNION tables[i-1]’) 
        rows.fetchall()
        i--
        tables[i] = rows

    print(tables[i])
    
    # end for loop

elif userAction == ‘bid’:
    inputID = sys.argv[2]
	  amount =sys.argv[3]
	  c.execute(‘UPDATE {tbl} SET {curr} = {am} WHERE {id}={uid}).
	      format(tbl=items, curr=currently,am=amount,id=itemID, uid=inputID)
    conn.commit()
    conn.close()
	

elif userAction == ‘buy’:
    itemID = sys.argv[2]
    c.execute(‘‘UPDATE {tbl} SET {curr} = {am} WHERE {id}={uid}).
	      format(tbl=items, curr=currently,am=maxPrice,id=itemID, uid=inputID)
    conn.commit()
    conn.close()

else 
    print (“Error: Command not found.”)
