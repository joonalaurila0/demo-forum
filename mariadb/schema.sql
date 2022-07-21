-- Users
create table users (
	id int not null primary key,
	email varchar(254) not null,
	password varchar(255) not null,
  role varchar(10),
  user_status varchar(40),
	created timestamp,
	updated timestamp,
	version int default 0,
	unique (email)
);

-- Authorities
create table authorities (
	email varchar(50) not null,
	authority varchar(50) not null,
	constraint fk_authorities_users foreign key(email) references users(email)
);
create unique index ix_auth_email on authorities (email,authority);

-- Categories
create table categories (
	id int not null primary key,
	topic varchar(100) not null,
  description text,
	created timestamp,
	updated timestamp,
	unique (topic)
);

-- Threads
create table threads (
	id int not null primary key,
	category_id int not null,
	user_id int not null,
	subject varchar(100) not null,
  content text,
	created timestamp,
	updated timestamp,
  constraint fk_thread_category foreign key (category_id) references categories (id),
  constraint fk_thread_user foreign key (user_id) references users (id)
);

-- Posts are made in threads
create table posts (
	id int not null primary key,
	thread_id int not null,
	user_id int not null,
  content text,
	created timestamp,
	updated timestamp,
	constraint fk_post_thread foreign key (thread_id) references threads (id),
	constraint fk_post_user foreign key (user_id) references users (id)
);

-- Replies to post in a thread.
create table replies (
  id varchar(20) not null primary key,
  post_id int not null,
  user_id int not null,
  content text not null,
	created timestamp,
	updated timestamp,
  constraint fk_reply_post foreign key (post_id) references posts (id),
	constraint fk_reply_user foreign key (user_id) references users (id)
);