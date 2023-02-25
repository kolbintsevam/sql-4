INSERT INTO singers
VALUES(1,'LOBODA'),
      (2, 'ARTIK ASTI'),
      (3, 'ZIVERT'),
      (4, 'BASTA'),
      (5, 'Polina Gagarina'),
      (6, 'Dima Bilan'),
      (7, 'NE LETO'),
      (8, 'Klava Koka');

     
INSERT INTO genre
VALUES(1, 'rap'),
      (2, 'pop'),
      (3, 'electro'),
      (4, 'house'),
      (5, 'rock');

     
INSERT INTO albums
VALUES(1, 'Super zvezda', 2018),
      (2, 'Grustnuy dence', 2020),
      (3, 'NEBO', 2021),
      (4, 'Sansara', 2021),
      (5, 'Obezoruzhena', 2019),
      (6, 'Derzhi', 2018),
      (7, 'Lubimka', 2020),
      (8, 'Pokinula chat', 2019);

     
INSERT INTO tracks
VALUES(1, 'TVOI GLAZA', 2.50, 1),
      (2, 'BESSONITSA', 3.19, 5),
      (3, 'KOGDA YA SMOTRU NA HEBO', 3.05, 4),
      (4, 'TANTSUY', 3.40, 2),
      (5, 'NA BEREGY NEBA', 4.00, 6),
      (6, 'POLOVINA', 3.48, 7),
      (7, 'MY SOUL', 3.57, 8),
      (8, 'MY SOUL', 3.57, 7),
      (9, 'NE BOLEY', 4.28, 3),
      (10, 'NE BOLEY', 4.28, 4),
      (11, 'DUSHI', 3.39, 5),
      (12, 'SERDZE', 3.42, 6),
      (13, 'DRUG', 2.19, 8),
      (14, 'PRAVDA', 3.08, 5),
      (15, 'MY HOME', 4.12, 2);

     
     
INSERT INTO compilation
VALUES(1, 'C1', 2018),
      (2, 'C2', 2019),
      (3, 'C3', 2020),
      (4, 'C4', 2022),
      (5, 'C5', 2020),
      (6, 'C6', 2021),
      (7, 'C7', 2022),
      (8, 'C8', 2019);

     
INSERT INTO genre_singers(singer_id, genre_id)
VALUES(1, 2),
      (2, 2),
      (3,2),
      (4, 1),
      (4, 2),
      (5, 2),
      (5, 5),
      (6, 2),
      (8, 2);

     
INSERT INTO singers_album(singer_id,album_id)
VALUES(2, 1),
      (2, 2),
      (3, 3),
      (1, 4),
      (7, 5),
      (4, 6),
      (5, 7),
      (8, 8);

     
INSERT INTO compilation_traks(track_id,compilation_id)
VALUES(1, 1),
      (2, 1),
      (3, 1),
      (6, 2),
      (7, 2),
      (4, 3),
      (3, 3),
      (9, 4),
      (11, 4),
      (14, 5),
      (12, 5),
      (1, 6),
      (10, 6),
      (13, 7),
      (2, 7),
      (5, 8),
      (7, 8); 

