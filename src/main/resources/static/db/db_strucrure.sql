//DROP TABLE IF EXISTS role;
//
//CREATE TABLE role (
//  role_id int(11) NOT NULL AUTO_INCREMENT,
//  role varchar(255) DEFAULT "ADMIN",
//  PRIMARY KEY (role_id)
//);
//
//
//
//DROP TABLE IF EXISTS user;
//
//
//CREATE TABLE user (
//  user_id int(11) NOT NULL AUTO_INCREMENT,
//  active int(11) DEFAULT NULL,
//  email varchar(255) NOT NULL,
//  last_name varchar(255) NOT NULL,
//  name varchar(255) NOT NULL,
//  password varchar(255) NOT NULL,
//  PRIMARY KEY (user_id)
//);
//


DROP TABLE IF EXISTS user_role;

CREATE TABLE user_role (
  user_id int(11) NOT NULL,
  role_id int(11) NOT NULL,
  PRIMARY KEY ('user_id','role_id'),
  KEY ('role_id'),
  CONSTRAINT FOREIGN KEY (user_id) REFERENCES user (user_id),
  CONSTRAINT FOREIGN KEY (role_id) REFERENCES role (role_id)
);
