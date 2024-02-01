# Write your MySQL query statement below

SELECT *, 
    IF(x+y>z AND x+z>y AND y+z>x, 'Yes', 'No') AS triangle
FROM triangle

/*This MySQL query selects all columns from the "triangle" table and includes an additional column named "triangle." 
The "triangle" column is a conditional statement (IF) that evaluates whether the values of columns x, y, and z can form a valid triangle (checking the triangle inequality theorem). 
If the conditions are met, it returns 'Yes'; otherwise, it returns 'No'.*/





