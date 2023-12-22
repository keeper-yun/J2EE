select * from user;

drop table user;

CREATE TABLE user (
                    id INT PRIMARY KEY auto_increment,
                    username VARCHAR(10) NOT NULL,
                    password VARCHAR(10) NOT NULL,
                    phonenumber VARCHAR(20) NOT NULL,
                    age varchar(3)
);