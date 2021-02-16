use vk;

desc users;
select * from users;
-- ��������� ���� username
alter table users add username varchar(100) not null after id;
-- ��������� ���� username ����������
update users set username = concat(
	lower(last_name),
	floor((1 + rand()) * 100)  
);


desc profiles;
select * from profiles;
-- ��������� �������� ����� update_at, last_login 
update profiles set update_at = now() where update_at < created_at;
update profiles set last_login = now() where last_login < created_at;


desc messages;
select * from messages;
-- ������������� ��������� �������� ��� ����� from_user_id, to_user_id
update messages set 
	from_user_id = floor(1 + rand() * 100), 
 	to_user_id = floor(1 + rand() * 100);

 
desc media;
select * from media;
-- ������������� ��������� �������� ��� ���� user_id
update media set user_id = floor(1 + rand() * 100);
-- ������� ��������� ������� �� ���������� ���������� ������
create temporary table file (name tinytext);
insert into file values
	('avi'), 
	('mp3'),
	('mpeg4'),
	('jpeg'),
	('png');
-- �������� �������� ���� filename
update media set filename = concat(
	'http://dropbox.com/vk/',
	'filename',
	'.',
	(select name from file order by rand() limit 1));
-- �������� ���������� �������� ���� size
update media set size = floor(1 + rand() * 10000) where size <= 1000;
-- ������������� ������ � JSON ������� ��� ���� metadata
update media set metadata = concat( 
	'{"owner": "',
	(select concat(first_name, " ", last_name) from users where id = media.user_id),
	'"}'
);
-- ������������� �������� �������� ��� ���� media_type_id
update media set media_type_id = floor(1 + rand() * 4);


desc media_types;
select * from media_types;
-- ������� ������ �� ������� media_types
delete from media_types;
-- ��������� ������ ������� media_types ��� ���� name
insert into media_types (name) values
	('photo'),
	('video'),
	('audio'),
	('image');
truncate media_types;


desc friendship;
select * from friendship;
-- ������� ���� requested_at
alter table friendship drop column requested_at;
-- ������������� ��������� �������� ��� ����� friend_id, user_id
update friendship set
	friend_id = floor(1 + rand() * 100),
	user_id = floor(1 + rand() * 100);
-- ������������� �������� �������� ��� ���� status_id
update friendship set status_id = floor(1 + rand() * 3);
-- ���������� ���� � ���� confirmed_at
update friendship set confirmed_at = now() where confirmed_at < created_at;


desc friendship_statuses;
select * from friendship_statuses;
-- ���������� ������ � ������� friendship_statuses
truncate friendship_statuses;
-- ������� �� ������������� ���� created_at, update_at
alter table friendship_statuses drop column created_at;
alter table friendship_statuses drop column update_at;
-- ������������� �������� ������� � ���� name
insert into friendship_statuses (name) values
	('requested'),
	('confirmed'),
	('regected');


desc communities;
select * from communities;
-- ��������� ���������� ����� �� 20
delete from communities where id > 20;
-- ���������� ���������� �������� ���� � ���� update_at
update communities set update_at = now() where update_at < created_at;


desc communities_users;
select * from communities_users;
-- ������������� �������� �������� � ���� community_id
update communities_users set community_id = floor(1 + rand() * 20);




