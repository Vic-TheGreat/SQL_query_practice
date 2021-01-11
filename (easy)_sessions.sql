/*
App usage data are kept in the following table:

TABLE sessions
  id INTEGER PRIMARY KEY,
  userId INTEGER NOT NULL,
  duration DECIMAL NOT NULL
Write a query that selects userId and average session duration for each user who has more than one session
*/

select userId, AVG(duration) as avgDuratn from sessions
group by userId
having count(userId) > 1

/* Very important to note that you canNOT use WHERE with aggregate functons
ex: where count(userId) >1    */
