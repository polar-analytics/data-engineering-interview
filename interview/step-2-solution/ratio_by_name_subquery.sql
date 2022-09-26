         -- get all the columns we need
    with data as (
  select u.name as name, 
         count(t.id) as cnt, 
         (select count(t2.id) from todos t2 where t2.userid=u.id) as total_todos
    from users u
    join todos t 
      on u.id=t.userid
   where t.completed = true
group by u.id
order by cnt desc
         )

         -- compute the ratio
  select name,
         cnt::float/total_todos::float as ratio
    from data
