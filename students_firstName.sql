-- Given the following data definition, write a query that returns the number of students whose first name is John. 
-- String comparisons should be case sensitive.

/*
TABLE students
   id INTEGER PRIMARY KEY,
   firstName VARCHAR(30) NOT NULL,
   lastName VARCHAR(30) NOT NULL
*/

select count(id) from students
where firstName = 'John'

/*
To explain further
Attention on utilisant LIKE au lieu de =, vous pouvez avoir les résultats différent.
https://stackoverflow.com/questions/543580/equals-vs-like
Basically, = checks each byte by byte(i.e each xter), the shortest xter will be compared. 
So for example, name ‘John’ stored in a table, when queried with 
where name= ‘John ’       will return 1 result but 
where name LIKE ‘John ’   will return 0

so becareful when using LIKE or =, there's no better one, it depends on what you're searching for.
LIKE is prefarably used with wildcard search ex '%John' or '_John', depending on the DB

CHEERS!!
*/
