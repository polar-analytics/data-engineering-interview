# 1️⃣
# import singer
# open the schema.json file
# read it
# cast the content into a dict
# store it in a `schema` variable
# call `singer.write_schema("users", schema, ["id"])`

# 2️⃣
# connect to the REST API https://jsonplaceholder.typicode.com/users
# GET data from it and store it in a `data` variable

# 3️⃣
# cast `data` into json
# store it into a `users` variable

# 4️⃣
# iterate over `users` and for each user call `singer.write_record("users", user)`
