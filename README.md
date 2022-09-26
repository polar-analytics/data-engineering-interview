# 👨‍💻 data-engineering-interview

## 🤗 Welcome

Hello dear data-engineer 👋,  
You will find 🕵️‍♂️ in this repository an exercise in 2️⃣ steps ✨.

## How to start the IDE?

```bash
docker-compose up
open http://localhost:8080
```

### 1️⃣ Extract and load data

You will find in the `step-1-workspace` directory, the first exercice. (you will also find one that is  called `step-1-solution` but please 🙏 don't open it yet 😉).

The goal 🎯 of the exercise is to create a Python script 🐍 (here the `app.py`) that will fetch dummy users data from [JSONPlaceholder](https://jsonplaceholder.typicode.com/users) and print them in the Singer format.  

You can check out what is Singer [here](https://www.singer.io/).

You can find 🔍 the results we want to achieve in the `result.json` file.  
Moreover, we have already prepared ✅ the schema of the data in the `schema.json` file.

Are you ready 🏁 ? **Go** 🏎!

**PS**: As a reminder 💡, you have the time to do it 🕰, we will be there to peer-prog with you and the goal is to see how you think and code 👨‍💻, not if you know every single library in Python and **absolutely not** to see if you are good in computational complexity... 🤦‍♂️

### 2️⃣ Transform the data

Great, you have successfully extracted and loaded the users 💪  
Now, please go in the `step-2-workspace` directory.  
For the second step of the exercice, we will also load dummy todos from [JSONPlaceholder](https://jsonplaceholder.typicode.com/todos). The `app.py` is already prepared, you just have to launch it (command available in the `run.sh` file).

Please check in the [SQL-Runner](http://localhost:8081) that both tables are available.

Now, for the exercice:

* First, we want to display the number of completed todos by user name.

Here is the result we want to achieve

| name                     | cnt |
|--------------------------|-----|
| Clementina DuBuque       | 12  |
| Chelsey Dietrich         | 12  |
| Leanne Graham            | 11  |
| Nicholas Runolfsdottir V | 11  |
| Kurtis Weissnat          | 9   |
| Glenna Reichert          | 8   |
| Ervin Howell             | 8   |
| Clementine Bauch         | 7   |
| Mrs. Dennis Schulist     | 6   |
| Patricia Lebsack         | 6   |

* Second, we want to display the completion rate by user name.

Here is the result we want to achieve

| name                     | ratio |
|--------------------------|-------|
| Chelsey Dietrich         | 0.6   |
| Clementina DuBuque       | 0.6   |
| Leanne Graham            | 0.55  |
| Nicholas Runolfsdottir V | 0.55  |
| Kurtis Weissnat          | 0.45  |
| Ervin Howell             | 0.4   |
| Glenna Reichert          | 0.4   |
| Clementine Bauch         | 0.35  |
| Mrs. Dennis Schulist     | 0.3   |
| Patricia Lebsack         | 0.3   |

* BONUS: do it with window functions
