USE vk;

SHOW tables;

CREATE UNIQUE INDEX users_username_uq ON users(username);

CREATE INDEX profiles_country_idx ON profiles(country);
CREATE INDEX profiles_city_idx ON profiles(city);

CREATE INDEX posts_head_idx ON posts(head);	
	
CREATE INDEX media_filename_idx ON media(filename);			