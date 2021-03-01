USE vk;

-- 1 ���������� ��� ������ �������� ������ (�����) - ������� ��� �������?
SELECT (SELECT gender FROM profiles WHERE user_id = users.id) AS sex,
	count(*) AS total_likes
	FROM users WHERE id in(SELECT user_id FROM likes GROUP BY user_id)
	GROUP BY sex
	ORDER BY total_likes;

-- 2 ���������� ���������� ������ ������� �������� 10 ����� ������� �������������.
SELECT TIMESTAMPDIFF(YEAR, birthday, NOW()) AS age FROM profiles WHERE user_id  
	IN(SELECT target_id FROM likes WHERE target_type_id = 
	(SELECT id FROM target_types WHERE name = 'users'))
	ORDER BY age LIMIT 10;

-- 3 ����� 10 �������������, ������� ��������� ���������� ���������� �
-- ������������� ���������� ����.
SELECT user_id FROM profiles WHERE NOT user_id 
	IN(SELECT user_id FROM likes GROUP BY user_id) 
	ORDER BY last_login LIMIT 10;
-- ���������� ������������ ���������� �������, �� �� ���� ������ ��� �� 
-- ������������� � ���������� �����������
SELECT * FROM users WHERE id IN
	(SELECT user_id FROM profiles WHERE NOT user_id 
	IN(SELECT user_id FROM likes GROUP BY user_id) 
	ORDER BY last_login) LIMIT 10;
