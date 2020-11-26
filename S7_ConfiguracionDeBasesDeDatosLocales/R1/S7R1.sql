CREATE DATABASE IF NOT EXISTS movie_db;
USE movie_db;
CREATE TABLE IF NOT EXISTS users (
   user_id INT PRIMARY KEY, 
   gender CHAR, 
   age INT,
   occupation INT,
   zipcode VARCHAR(10)
); 
CREATE TABLE IF NOT EXISTS movies (
   movie_id INT PRIMARY KEY, 
   title VARCHAR(80), 
   genre VARCHAR(80)
); 
CREATE TABLE IF NOT EXISTS ratings (
   user_id INT,
   movie_id INT,
   rating INT,
   time_stamp BIGINT
); 
