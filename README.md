# 👨‍💻 data-engineering-interview

## 🤗 Welcome

Hello dear data-engineer 👋,  
You will find 🕵️‍♂️ in this repository an exercise in 2️⃣ steps ✨.  
You can use all the libraries you love and are confortable with, as well as all the resources on the Internet (stackoverflow, etc...).

## 1️⃣ Develop a JSON Parser

You need to implement a function that parses a JSON string.  
You can use any library in the language of your choice (except a library that parses JSON obviously).

```python
def parse_json(input: str) -> Dict[str, Any]:
    """
    Example of input / output: 

    input: '{"foo":"bar"}'
    output: {"foo":"bar"}
    """

    # TODO: implement me!
    return dictionary
```

## 2️⃣ Fetch data

The goal of this exercise is to design a read-only REST API that returns one or more records from static set of shopify data.

Data: https://raw.githubusercontent.com/polar-analytics/data-engineering-interview/main/data.json

- Filter by two fields/attributes: /orders?order_id=&processed_at=
- Sort by processed_at field: /orders?sort=processed_at
