USE vk;

DROP TABLE IF EXISTS likes;
CREATE TABLE likes (
	id int UNSIGNED NOT NULL AUTO_INCREMENT PRIMARY KEY,
	user_id int UNSIGNED NOT NULL,
	target_id int UNSIGNED NOT NULL,
	target_type_id int UNSIGNED NOT NULL,
	created_at datetime DEFAULT current_timestamp 
);

DROP TABLE IF EXISTS target_types;
CREATE TABLE target_types (
	id int UNSIGNED NOT NULL AUTO_INCREMENT PRIMARY KEY,
	name varchar(255) NOT NULL UNIQUE,
	created_at datetime DEFAULT current_timestamp
);

INSERT INTO target_types (name) VALUES 
	('messages'),
	('users'),
	('media'),
	('posts');

INSERT INTO likes 
	SELECT 
		id, 
		floor(1 + rand() * 100),
		floor(1 + rand() * 100),
		floor(1 + rand() * 4),
		current_timestamp
		FROM posts;
	
DROP TABLE IF EXISTS posts;
CREATE TABLE posts (
	id int UNSIGNED NOT NULL AUTO_INCREMENT PRIMARY KEY,
	user_id int UNSIGNED NOT NULL,
	communitie_id int UNSIGNED,
	head varchar(255),
	body text NOT NULL,
	media_id int UNSIGNED,
	is_public boolean DEFAULT TRUE,
	is_archived boolean DEFAULT FALSE,
	created_at datetime DEFAULT current_timestamp,
	update_at datetime DEFAULT current_timestamp ON UPDATE current_timestamp
);

ALTER TABLE profiles 
	ADD CONSTRAINT profiles_user_id_fk
	FOREIGN KEY (user_id) REFERENCES users(id)
	ON DELETE CASCADE;

ALTER TABLE messages 
	ADD CONSTRAINT messages_from_user_id_fk
	FOREIGN KEY (from_user_id) REFERENCES users(id)
	ON DELETE CASCADE, 
	ADD CONSTRAINT messages_to_user_id_fk
	FOREIGN KEY (to_user_id) REFERENCES users(id)
	ON DELETE CASCADE;

ALTER TABLE posts 
	ADD CONSTRAINT posts_user_id_fk
	FOREIGN KEY (user_id) REFERENCES users(id)
	ON DELETE CASCADE, 
	ADD CONSTRAINT posts_communitie_id_fk
	FOREIGN KEY (communitie_id) REFERENCES communities(id)
	ON DELETE CASCADE,
	ADD CONSTRAINT posts_media_id_fk
	FOREIGN KEY (media_id) REFERENCES media(id)
	ON DELETE CASCADE;

ALTER TABLE media 
	ADD CONSTRAINT media_user_id_fk
	FOREIGN KEY (user_id) REFERENCES users(id)
	ON DELETE CASCADE, 
	ADD CONSTRAINT media_type_id_fk
	FOREIGN KEY (media_type_id) REFERENCES media_types(id)
	ON DELETE CASCADE;

ALTER TABLE likes 
	ADD CONSTRAINT likes_user_id_fk
	FOREIGN KEY (user_id) REFERENCES users(id)
	ON DELETE CASCADE, 
	ADD CONSTRAINT likes_target_types_id_fk
	FOREIGN KEY (target_type_id) REFERENCES target_types(id)
	ON DELETE CASCADE;

ALTER TABLE friendship 
	ADD CONSTRAINT friendship_user_id_fk
	FOREIGN KEY (user_id) REFERENCES users(id)
	ON DELETE CASCADE, 
	ADD CONSTRAINT friendship_friend_id_fk
	FOREIGN KEY (friend_id) REFERENCES users(id)
	ON DELETE CASCADE,
	ADD CONSTRAINT friendship_status_id_fk
	FOREIGN KEY (status_id) REFERENCES friendship_statuses(id)
	ON DELETE CASCADE;

ALTER TABLE communities_users 
	ADD CONSTRAINT communities_users_user_id_fk
	FOREIGN KEY (user_id) REFERENCES users(id)
	ON DELETE CASCADE, 
	ADD CONSTRAINT communities_users_communitie_id_fk
	FOREIGN KEY (community_id) REFERENCES communities(id)
	ON DELETE CASCADE;