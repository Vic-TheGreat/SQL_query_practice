/* Information about pets is kept in two separate tables:
TABLE dogs
  id INTEGER NOT NULL PRIMARY KEY,
  name VARCHAR(50) NOT NULL

TABLE cats
  id INTEGER NOT NULL PRIMARY KEY,
  name VARCHAR(50) NOT NULL

Write a query that select all distinct pet names.
*/

select name FROM dogs
union
select name from cats

--sometimes UNION is the answer you need, lol

/* I'm wondering if there is another way to acheive this.
DISTINCT keyword takes only one param and 

select c.name, d.name AS name FROM dogs d
join cats c
on d.id = c.id

returns ALL pet names
*/
