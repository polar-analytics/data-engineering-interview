         -- get number of completed todos by userid
    with completed_count_by_userid AS (
  select userid,
         count(completed) AS completed_cnt
    from todos
   where completed is true
group by userid
         ),

         -- get number of todos by userid
         total_count_by_userid AS (
  select userid,
         count(id) AS total_cnt
    from todos
group by userid
         ),
         
         -- get name by userid
         name_by_userid AS (
  select id,
         name
    from users
         )
         
         -- join everything togeteher
  select e.name,
         (c.completed_cnt::float / t.total_cnt::float) AS ratio
    from total_count_by_userid t
    join completed_count_by_userid c
      on t.userid = c.userid
    join name_by_userid e
      on t.userid = e.id
order by ratio desc
