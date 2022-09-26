  select users.name,
         count(todos.completed) AS cnt
    from users
    join todos
      on users.id = todos.userid
   where todos.completed is true
group by users.name
order by cnt desc
