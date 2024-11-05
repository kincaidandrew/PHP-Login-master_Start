CREATE DATABASE CRUD; 
use CRUD; 
CREATE TABLE users ( 
    id INT(11) UNSIGNED AUTO_INCREMENT PRIMARY KEY,
    firstname VARCHAR(30) NOT NULL,
    lastname VARCHAR(30) NOT NULL,
    email VARCHAR(50) NOT NULL,
    age INT(3),
    location VARCHAR(50),
    date TIMESTAMP default now()
);

CREATE TABLE credentials ( 
    id INT(11) FOREIGN KEY REFERENCES users(ID),
    username VARCHAR(30) NOT NULL,
    pword PASSWORD (30) NOT NULL,    
    date TIMESTAMP default now()
);