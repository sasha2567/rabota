create table `order`(
	id int not null AUTO_INCREMENT,
   user_id int not null,
   date datetime not null,
   state int not null,
   PRIMARY KEY (id),
   FOREIGN KEY (user_id) REFERENCES user(id)
);