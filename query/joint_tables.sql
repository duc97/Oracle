--025-JOIN dữ liệu giữa 2 bảng
SELECT * FROM playlists;
SELECT * FROM users;
--câu lệnh JOIN bảng
--Bạn có thể sử dụng câu lệnh JOIN để kết hợp thông tin từ cả hai bảng playlists và users 
--dựa trên user_id, một khóa ngoại mà cả hai bảng đều có. 
SELECT 
    playlists.playlist_id,
    users.username,
    playlists.playlist_name,
    playlists.date_created    
FROM playlists
JOIN users
ON playlists.user_id = users.user_id;
--Lấy tên người dùng và tên playlist
SELECT 
    users.username, 
    playlists.playlist_name
FROM playlists
JOIN users
ON playlists.user_id = users.user_id;
--Lấy thông tin của các playlist được tạo bởi người dùng có loại tài khoản Premium
SELECT 
    playlists.*,
    users.username,
    users.premium    
FROM playlists
JOIN users
ON playlists.user_id = users.user_id
WHERE users.premium = 1;


UPDATE users 
SET users.premium = 1
WHERE user_id=1;

--Đếm số playlist của mỗi người dùng
SELECT 
    users.username, 
    COUNT(playlists.playlist_id)
FROM playlists
JOIN users
ON playlists.user_id = users.user_id
GROUP BY users.username;

--Lấy thông tin về các playlist được tạo trong 7 ngày qua
SELECT test
    users.username, 
    playlists.playlist_name
FROM playlists
JOIN users
ON playlists.user_id = users.user_id
WHERE playlists.date_created >= SYSDATE - 7;--cần dữ liệu nhiều => sẽ có bài dùng dữ liệu mẫu của Oracle để 

--Lấy tên người dùng và tên playlist, sắp xếp theo ngày tạo playlist
SELECT 
    users.username, 
    playlists.playlist_name,
    playlists.date_created
FROM playlists
JOIN users
ON playlists.user_id = users.user_id
ORDER BY playlists.date_created DESC;

--Lấy thông tin về các playlist được tạo bởi người dùng có email: sunlight4d@gmail.com
SELECT playlists.*
FROM playlists
JOIN users
ON playlists.user_id = users.user_id
WHERE users.email = 'jonny123@gmail.com';
/*
Lệnh JOIN trong SQL được sử dụng để kết hợp hàng từ hai hoặc nhiều bảng 
dựa trên một điều kiện liên quan,thường là sự tương ứng giữa các cột. 
Có một số loại JOIN khác nhau, bao gồm INNER JOIN, LEFT JOIN, RIGHT JOIN, và FULL JOIN.
*/



COMMIT;