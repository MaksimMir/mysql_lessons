USE vk;
	
SELECT DISTINCT c.name,
	count(cu.user_id) OVER (PARTITION BY cu.community_id) / 20 AS avg_users_in_group,
	min(p.birthday) OVER (PARTITION BY c.name ORDER BY p.birthday) AS min_age,
	max(p.birthday) OVER (PARTITION BY c.name ORDER BY p.birthday desc) AS max_age,
	count(cu.user_id) OVER (PARTITION BY cu.community_id) AS users_in_group,
	count(p.user_id) OVER () AS all_users,
	(count(cu.user_id) OVER (PARTITION BY cu.community_id) / 
	count(cu.user_id) OVER ()) * 100 AS '%%' 
	FROM communities_users cu
	LEFT JOIN communities c
	ON c.id = cu.community_id
	LEFT JOIN profiles p
	ON cu.user_id = p.user_id;
