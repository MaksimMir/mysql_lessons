USE vk;


-- 1 Определить кто больше поставил лайков (всего) - мужчины или женщины?

SELECT gender, count(*) AS total_likes 
	FROM 
	profiles AS p
	JOIN
	likes AS l
	ON p.user_id = l.user_id
	GROUP BY p.gender
	ORDER BY total_likes DESC 
	LIMIT 1;

-- 2 Подсчитать количество лайков которые получили 10 самых молодых пользователей.

 SELECT count(target_id) AS total_likes
	FROM 
	profiles
	JOIN 
	likes
	ON profiles.user_id IN (SELECT * FROM 
	(SELECT user_id FROM profiles ORDER BY birthday DESC LIMIT 10) AS sorted)
	AND profiles.user_id = likes.target_id
	AND likes.target_type_id = 2;

-- 3 Найти 10 пользователей, которые проявляют наименьшую активность в
-- использовании социальной сети.

SELECT DISTINCT concat(first_name, ' ', last_name) AS users
	FROM users
	LEFT JOIN likes
	ON users.id = likes.user_id
	LEFT JOIN media 
	ON users.id = media.user_id
	LEFT JOIN messages 
	ON messages.from_user_id = users.id
	WHERE users.id IN (SELECT * FROM 
	(SELECT id FROM users ORDER BY id LIMIT 10) AS sorted);

