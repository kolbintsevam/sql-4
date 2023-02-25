SELECT g."name",COUNT(*) 
  FROM genre_singers gs
       LEFT JOIN genre g 
       ON g.genre_id = gs.genre_id 
 GROUP BY  g.name ;


SELECT COUNT(*)  
  FROM tracks t
       LEFT JOIN albums a
       ON t.album_id = a.album_id
 WHERE a."date" BETWEEN 2019 AND 2020;


SELECT album_id ,AVG(t.duration) 
  FROM tracks t
 GROUP BY album_id  
 ORDER BY album_id;


SELECT name 
  FROM singers s 
 WHERE singer_id NOT IN 
       (SELECT singer_id 
          FROM singers_album sa 
         WHERE album_id IN 
               (SELECT album_id 
                  FROM albums a 
                 WHERE date = 2020));


SELECT DISTINCT c."name"  
  FROM singers s 
       LEFT JOIN singers_album sa 
       ON s.singer_id = sa.singer_id
       LEFT JOIN albums a  
       ON a.album_id = sa.album_id
       LEFT JOIN tracks t  
       ON a.album_id = t.album_id
       LEFT JOIN compilation_traks ct 
       ON t.track_id = ct.track_id
       LEFT JOIN compilation c 
       ON c.compilation_id = ct.compilation_id 
 WHERE  s."name" = 'LOBODA';


SELECT a.name 
  FROM albums a 
       LEFT JOIN singers_album sa 
       ON a.album_id = sa.album_id 
       LEFT JOIN singers s 
       ON s.singer_id = sa.singer_id 
       LEFT JOIN genre_singers gs 
       ON s.singer_id = gs.singer_id
 GROUP BY  a."name"
 HAVING COUNT(gs.singer_id) > 1;


SELECT t.name 
  FROM tracks t
       LEFT JOIN compilation_traks ct 
       ON t.track_id = ct.track_id
 WHERE ct.track_id IS NULL ;


SELECT s."name"  
  FROM tracks t 
       LEFT JOIN albums a 
       ON a.album_id = t.album_id
       LEFT JOIN singers_album sa 
       ON a.album_id = sa.album_id
       LEFT JOIN singers s 
       ON s.singer_id = sa.singer_id 
 WHERE t.duration  = (SELECT MIN(duration) 
                        FROM tracks);


SELECT a."name"  
  FROM tracks t
       LEFT JOIN albums a 
       ON a.album_id = t.album_id
 GROUP BY a."name" 
 HAVING count(t.album_id) = (SELECT COUNT(t.name) 
                               FROM albums a 
	                                JOIN tracks t  
	                                ON a.album_id  = t.album_id 
	                         GROUP BY a."name" 
	                         ORDER BY COUNT(t."name")
	                         LIMIT 1);


SELECT COUNT(t.name) FROM albums a 
	JOIN tracks t  ON a.album_id  = t.album_id 
	GROUP BY a."name" 
	ORDER BY COUNT(t."name")
	LIMIT 1);