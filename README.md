# 👨‍💻 data-engineering-interview

## 🤗 Welcome

Hello dear data-engineer 👋,  
You will find 🕵️‍♂️ in this repository an exercise in 2️⃣ steps ✨.  
You can use all the libraries you love and are confortable with, as well as all the resources on the Internet (stackoverflow, etc...).

## 1️⃣ Fetch data

List compensation data via API GET request:
https://raw.githubusercontent.com/polar-analytics/data-engineering-interview/main/data.json

- Filter by one or more fields/attributes (e.g. /compensation_data?salary[gte]=120000&zip_code=11201 )
- Sort by one or more fields/attributes (e.g. /compensation_data?sort=last_name)

## 2️⃣ Develop a JSON Parser

You need to implement a function that parses a JSON string.  
You can use any library in the language of your choice (except a library that parses JSON obviously).

```python
def parse_json(input: str) -> Dict[str, Any]:
    """
    Example

    input: '{"foo":"bar"}'
    output: {"foo":"bar"}
    """

    # TODO: implement me!
    return dictionary
```
