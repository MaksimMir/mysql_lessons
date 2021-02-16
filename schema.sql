use vk;

desc users;
select * from users;
-- добавляем поле username
alter table users add username varchar(100) not null after id;
-- заполняем поле username значениями
update users set username = concat(
	lower(last_name),
	floor((1 + rand()) * 100)  
);


desc profiles;
select * from profiles;
-- обновляем значения полей update_at, last_login 
update profiles set update_at = now() where update_at < created_at;
update profiles set last_login = now() where last_login < created_at;


desc messages;
select * from messages;
-- устанавливаем рандомные значения для полей from_user_id, to_user_id
update messages set 
	from_user_id = floor(1 + rand() * 100), 
 	to_user_id = floor(1 + rand() * 100);

 
desc media;
select * from media;
-- устанавливаем рандомное значение для поля user_id
update media set user_id = floor(1 + rand() * 100);
-- создаем временную таблицу со значениями расширений файлов
create temporary table file (name tinytext);
insert into file values
	('avi'), 
	('mp3'),
	('mpeg4'),
	('jpeg'),
	('png');
-- изменяем значения поля filename
update media set filename = concat(
	'http://dropbox.com/vk/',
	'filename',
	'.',
	(select name from file order by rand() limit 1));
-- изменяем невалидные значения поля size
update media set size = floor(1 + rand() * 10000) where size <= 1000;
-- устанавливаем данные в JSON формате для поля metadata
update media set metadata = concat( 
	'{"owner": "',
	(select concat(first_name, " ", last_name) from users where id = media.user_id),
	'"}'
);
-- устанавливаем валидные значения для поля media_type_id
update media set media_type_id = floor(1 + rand() * 4);


desc media_types;
select * from media_types;
-- удаляем данные из таблицы media_types
delete from media_types;
-- обнавляем данные таблицы media_types для поля name
insert into media_types (name) values
	('photo'),
	('video'),
	('audio'),
	('image');
truncate media_types;


desc friendship;
select * from friendship;
-- удаляем поле requested_at
alter table friendship drop column requested_at;
-- устанавливаем рандомные значения для полей friend_id, user_id
update friendship set
	friend_id = floor(1 + rand() * 100),
	user_id = floor(1 + rand() * 100);
-- устанавливаем валидные значения ждя поля status_id
update friendship set status_id = floor(1 + rand() * 3);
-- валидируем даты в поле confirmed_at
update friendship set confirmed_at = now() where confirmed_at < created_at;


desc friendship_statuses;
select * from friendship_statuses;
-- сбрасываем данные в таблице friendship_statuses
truncate friendship_statuses;
-- удаляем за ненадобностью поля created_at, update_at
alter table friendship_statuses drop column created_at;
alter table friendship_statuses drop column update_at;
-- устанавливаем значения статуса в поле name
insert into friendship_statuses (name) values
	('requested'),
	('confirmed'),
	('regected');


desc communities;
select * from communities;
-- уменьшаем количество групп до 20
delete from communities where id > 20;
-- исправляем невалидные значения даты в поле update_at
update communities set update_at = now() where update_at < created_at;


desc communities_users;
select * from communities_users;
-- устанавливаем валидные значения в поле community_id
update communities_users set community_id = floor(1 + rand() * 20);




