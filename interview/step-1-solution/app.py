# 0️⃣ import required libraries
import json

import requests
import singer

# 1️⃣
# import singer
# open the schema.json file
# read it
# cast the content into a dict
# store it in a `schema` variable
# call `singer.write_schema("users", schema, ["id"])`
with open("/config/workspace/step-1-solution/schema.json", "r") as schema:
    schema = json.loads(schema.read())
    singer.write_schema("users", schema, ["id"])

# 2️⃣
# connect to the REST API https://jsonplaceholder.typicode.com/users
# GET data from it and store it in a `data` variable
data = requests.get("https://jsonplaceholder.typicode.com/users")

# bonus production ready
if not data.status_code == 200:
    exit("terminating the process because an error occured while contacting the API")

# 3️⃣
# cast `data` into json
# store it into a `users` variable
users = data.json()  # or json.loads(data.text)

# 4️⃣
# iterate over `users` and for each user call `singer.write_record("users", user)`
for user in users:
    singer.write_record("users", user)
