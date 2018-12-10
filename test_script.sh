#!/bin/bash

python user_access.py action=search table=item condition=itemID\=1046194452
python user_access.py action=search table=category condition=category\=toys 
python user_access.py action=search table=item condition=minPrice\>10 condition=maxPrice\<1000
python user_access.py action=bid 5436452645 300
python user_access.py action=buy 1046301893 49.99
python user_access.py action=search table=item condition=description\=”This is a beautiful solid copper stein that will look gorgeous displayed on your country kitchen counter or wall.”
python user_access.py action=bid 1046309523 10.00
Python user_access.py action=bid 1046316026 12.00
