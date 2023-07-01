.read data.sql


CREATE TABLE bluedog AS
  SELECT color, pet from students WHERE color == 'blue' and pet = 'dog';

CREATE TABLE bluedog_songs AS
  SELECT color, pet, song from students WHERE color == 'blue' and pet = 'dog';


CREATE TABLE smallest_int AS
  SELECT time, smallest from students WHERE smallest > 2 ORDER BY smallest LIMIT 20;


CREATE TABLE matchmaker AS
  SELECT a.pet, a.song, a.color, b.color FROM students as a, students as b
    WHERE a.time < b.time and a.pet = b.pet and a.song = b.song;


CREATE TABLE sevens AS
  SELECT students.seven from students, numbers
    WHERE students.time = numbers.time and students.number = 7 and numbers."7" = 'True'; 
