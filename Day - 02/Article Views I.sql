SELECT DISTINCT(author_id) as id
FROM views
WHERE author_id = viewer_id
ORDER BY id;

/*This SQL query retrieves unique author IDs (renamed as "id") from the "views" table where the author ID matches the viewer ID. 
  The DISTINCT keyword ensures only unique values, and the result is ordered by the "id" in ascending order.*/