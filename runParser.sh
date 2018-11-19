#!/bin/bash
python parser.py items-*.json

sort items.dat | uniq > items.dat
sort users.dat | uniq > users.dat
sort category.dat | uniq > category.dat
sort bids.dat | uniq >  bids.dat
