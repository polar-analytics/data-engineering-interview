  select distinct 
         u.name,
         (sum(case when t.completed is true then 1 else 0 end) over (partition by t.userid))::float /
         (count(t.id) over (partition by t.userid))::float as ratio
    from todos t
    join users u
      on t.userid = u.id
order by ratio desc
