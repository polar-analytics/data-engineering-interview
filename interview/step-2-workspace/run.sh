#!/bin/bash

# extract data and print them
python3 app.py

# extract data and load it in a postgresql database
python3 app.py | target-postgres --config config_postgresql.json

# check results on localhost:8081
