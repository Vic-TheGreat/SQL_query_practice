/*  A new social network site has the following data tables:

          USERS
---------------------------
 ID  |  NAME	  |  SEX  
---------------------------
 1   |  Ann	    | null
 2   |  Steve	  |  m
 3   |  Mary	  |  f
 4   |  Brenda	|  f


    FRIENDS
----------------
USER1 |	USER2
----------------
  1   | 	2
  1   | 	3
  2   | 	3
  
Select data that will be returned by the following SQL query:
*/

SELECT users.name, COUNT(*) as count FROM users
LEFT JOIN friends
ON users.id = friends.user1 OR users.id = friends.user2
WHERE users.sex = 'f'
GROUP BY users.id, users.name;

/* Which of these will the query return
Ann, 1
Ann, 2
Steve, 1
Steve, 2
Mary, 1
Mary, 2
Brenda, 0
Brenda, 1

ANSWER: 
Mary,2 
Brenda, 1
cos its a LEFT join, so count is on users table

intresting to note also that you can use an OR btw Join condition (line 26)
*/
