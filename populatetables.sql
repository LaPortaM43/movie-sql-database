INSERT INTO members VALUES('u1','Bob','Bob@gmail.com');
INSERT INTO members VALUES('u2','Bill','Bill@gmail.com');
INSERT INTO members VALUES('u3','Ben','Ben@gmail.com');
INSERT INTO members VALUES('u4','Frank','Frank@gmail.com');
INSERT INTO members VALUES('u5','Matt','Matt@gmail.com');
INSERT INTO members VALUES('u6','Kyle','Kyle@gmail.com');
INSERT INTO members VALUES('u7','Ryan','Ryan@gmail.com');
INSERT INTO members VALUES('u8','Robert','Robert@gmail.com');
INSERT INTO members VALUES('u9','Kate','Kate@gmail.com');
INSERT INTO members VALUES('u10','Emily','Emily@gmail.com');

SELECT * FROM members; 

INSERT INTO movies VALUES('m1','Wall-E',2008);
INSERT INTO movies VALUES('m2','Inside Out',2015);
INSERT INTO movies VALUES('m3','Ratatouille',2007);
INSERT INTO movies VALUES('m4','The Fall Guy',2024);
INSERT INTO movies VALUES('m5','The Princess Bride',1987);
INSERT INTO movies VALUES('m6','The Lego Batman Movie',2017);
INSERT INTO movies VALUES('m7','Drive',2011);
INSERT INTO movies VALUES('m8','Barbie',2023);
INSERT INTO movies VALUES('m9','Dune: Part Two',2024);
INSERT INTO movies VALUES('m10','Stardust',2007);
INSERT INTO movies VALUES('m11','The Other GUys',2010);
INSERT INTO movies VALUES('m12','John Wick: Chapter 4',2023);

SELECT * FROM movies;

INSERT INTO genres VALUES('g1','Science Fiction','m1');
INSERT INTO genres VALUES('g1','Science Fiction','m9');
INSERT INTO genres VALUES('g2','Adventure','m2');
INSERT INTO genres VALUES('g2','Adventure','m3');
INSERT INTO genres VALUES('g3','Fantasy','m5');
INSERT INTO genres VALUES('g3','Fantasy','m10');
INSERT INTO genres VALUES('g4','Action','m4');
INSERT INTO genres VALUES('g4','Action','m7');
INSERT INTO genres VALUES('g5','Comedy','m6');
INSERT INTO genres VALUES('g5','Comedy','m8');
INSERT INTO genres('g4','Action','m12');
INSERT INTO genres('g5','Comedy','m11');

SELECT * FROM genres;

INSERT INTO rate VALUES('u1','m1',DATE '2024-05-08','B');
INSERT INTO rate VALUES('u2','m2',DATE '2024-05-11','A');
INSERT INTO rate VALUES('u3','m3',DATE '2024-05-11','A');
INSERT INTO rate VALUES('u4','m4',DATE '2024-05-22','A');
INSERT INTO rate VALUES('u5','m7',DATE '2024-05-23','A');
INSERT INTO rate VALUES('u6','m9',DATE '2024-05-01','B');
INSERT INTO rate VALUES('u7','m10',DATE '2024-05-02','A');
INSERT INTO rate VALUES('u8','m5',DATE '2024-05-03','A');
INSERT INTO rate VALUES('u9','m8',DATE '2024-05-05','B');
INSERT INTO rate VALUES('u10','m6',DATE '2024-05-13','A');
INSERT INTO rate VALUES('u2','m3',DATE '2024-05-11','A');
INSERT INTO rate VALUES('u2','m4',DATE '2024-05-11','A');

SELECT * FROM rate;