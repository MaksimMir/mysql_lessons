  
use vk;

desc users;
select * from users;
<<<<<<< Updated upstream
-- Добавляем поле username
alter table users add username varchar(100) not null after id;
-- Устанавливаем значения в поле username
=======

alter table users add username varchar(100) not null after id;

>>>>>>> Stashed changes
update users set username = concat(
	lower(last_name),
	floor((1 + rand()) * 100)  
);


desc profiles;
select * from profiles;
<<<<<<< Updated upstream
-- Валидируем значения дат в полях update_at, last_login 
=======
 
>>>>>>> Stashed changes
update profiles set update_at = now() where update_at < created_at;
update profiles set last_login = now() where last_login < created_at;


desc messages;
select * from messages;
<<<<<<< Updated upstream
-- Устанавливаем рандомные значения в поля from_user_id, to_user_id
=======

>>>>>>> Stashed changes
update messages set 
	from_user_id = floor(1 + rand() * 100), 
 	to_user_id = floor(1 + rand() * 100);

 
desc media;
select * from media;
<<<<<<< Updated upstream
-- Устанавливаем рандомные значения в поле user_id
update media set user_id = floor(1 + rand() * 100);
-- Создаем временную таблицу для расширений файлов
=======

update media set user_id = floor(1 + rand() * 100);

>>>>>>> Stashed changes
create temporary table file (name tinytext);
insert into file values
	('avi'), 
	('mp3'),
	('mpeg4'),
	('jpeg'),
	('png');
<<<<<<< Updated upstream
-- Устанавливаем данные в поле filename
=======

>>>>>>> Stashed changes
update media set filename = concat(
	'http://dropbox.com/vk/',
	'filename',
	'.',
	(select name from file order by rand() limit 1));
<<<<<<< Updated upstream
-- устанавливаем валидные данные в поле size
update media set size = floor(1 + rand() * 10000) where size <= 1000;
-- Устанавливаем данные в JSON формате для поля metadata
=======

update media set size = floor(1 + rand() * 10000) where size <= 1000;

>>>>>>> Stashed changes
update media set metadata = concat( 
	'{"owner": "',
	(select concat(first_name, " ", last_name) from users where id = media.user_id),
	'"}'
);
<<<<<<< Updated upstream
-- Устанавливаем валидные данные в поле media_type_id
=======

>>>>>>> Stashed changes
update media set media_type_id = floor(1 + rand() * 4);


desc media_types;
select * from media_types;
<<<<<<< Updated upstream
-- Удаляем данные из таблицы media_types
delete from media_types;
-- Устанавливаем данные в таблицу media_types в поле name
=======

delete from media_types;

>>>>>>> Stashed changes
insert into media_types (name) values
	('photo'),
	('video'),
	('audio'),
	('image');
truncate media_types;


desc friendship;
select * from friendship;
<<<<<<< Updated upstream
-- Удаляем поле requested_at
alter table friendship drop column requested_at;
-- Устанавливаем рандомные значения в поля friend_id, user_id
update friendship set
	friend_id = floor(1 + rand() * 100),
	user_id = floor(1 + rand() * 100);
-- Устанавливаем валидные значения в поле status_id
update friendship set status_id = floor(1 + rand() * 3);
-- Валидируем даты в поле confirmed_at
=======

alter table friendship drop column requested_at;

update friendship set
	friend_id = floor(1 + rand() * 100),
	user_id = floor(1 + rand() * 100);

update friendship set status_id = floor(1 + rand() * 3);

>>>>>>> Stashed changes
update friendship set confirmed_at = now() where confirmed_at < created_at;


desc friendship_statuses;
select * from friendship_statuses;
<<<<<<< Updated upstream
-- Удаляем данные из таблицы friendship_statuses
truncate friendship_statuses;
-- Удаляем за ненадобностью поля created_at, update_at
alter table friendship_statuses drop column created_at;
alter table friendship_statuses drop column update_at;
-- Устанавливаем значения статусов в поле name
=======

truncate friendship_statuses;

alter table friendship_statuses drop column created_at;
alter table friendship_statuses drop column update_at;

>>>>>>> Stashed changes
insert into friendship_statuses (name) values
	('requested'),
	('confirmed'),
	('regected');


desc communities;
select * from communities;
<<<<<<< Updated upstream
-- Уменьшаем количество групп до 20
delete from communities where id > 20;
-- Валидируем значение даты в поле update_at
=======

delete from communities where id > 20;

>>>>>>> Stashed changes
update communities set update_at = now() where update_at < created_at;


desc communities_users;
select * from communities_users;
-- Устанавливаем валидные значения в поле community_id
update communities_users set community_id = floor(1 + rand() * 20);
