
INSERT INTO artists (artist_id, email, phone_number, country, artist_name, description, artist_type, active, date_created) 
VALUES (21, 'artist1@example.com', '123-456-7890', 'United States', 'Artist usa 1', 'Description about artist 1', 'composer', 1, SYSDATE);

INSERT INTO artists (artist_id, email, phone_number, country, artist_name, description, artist_type, active, date_created) 
VALUES (22, 'artist22@example.com', '123-551-7890', 'United States', 'Artist usa 2', 'Description about artist 2', 'composer', 1, SYSDATE);

INSERT INTO artists (artist_id, email, phone_number, country, artist_name, description, artist_type, active, date_created) 
VALUES (23, 'artist2@example.com', '123-321-7890', 'United Kingdom', 'Artist uk 2', 'Description about artist 2', 'performer', 1, SYSDATE);

INSERT INTO artists (artist_id, email, phone_number, country, artist_name, description, artist_type, active, date_created) 
VALUES (24, 'artist3@example.com', '321-456-7890', 'France', 'Artist 3', 'Description about artist 3', 'composer', 0, SYSDATE);

INSERT INTO artists (artist_id, email, phone_number, country, artist_name, description, artist_type, active, date_created) 
VALUES (25, 'artist3@example.com', '111-456-7890', 'France', 'Artist 4', 'Description about artist 3', 'composer', 0, SYSDATE);

INSERT INTO artists (artist_id, email, phone_number, country, artist_name, description, artist_type, active, date_created) 
VALUES (26, 'artist3@example.com', '122-456-7890', 'France', 'Artist 5', 'Description about artist 3', 'composer', 0, SYSDATE);

INSERT INTO artists (artist_id, email, phone_number, country, artist_name, description, artist_type, active, date_created) 
VALUES (27, 'artist5@example.com', '548-456-7890', 'Germany', 'Artist 6', 'Description about artist 5', 'composer', 0, SYSDATE);

--Đếm số lượng nghệ sĩ từ mỗi quốc gia
SELECT 
    country, 
    COUNT(*) as total_artists 
FROM artists 
GROUP BY country;
--Đếm số lượng nghệ sĩ đang hoạt động (active = 1) từ mỗi quốc gia
SELECT 
    country, 
    COUNT(*) as total_active_artists 
FROM artists 
WHERE active = 1 
GROUP BY country;

--SELECT * FROM artists;
--Đếm số lượng nghệ sĩ đang hoạt động (active = 1) theo từng loại (artist_type)
SELECT 
    artist_type, 
    COUNT(*) as total_active_artists 
FROM artists 
WHERE active = 1 
GROUP BY artist_type;

SELECT count(*) FROM artists WHERE artist_type='composer' AND active = 1;

SELECT * FROM songs;
--Đếm tổng số bài hát phát hành trong mỗi ngày
SELECT 
    released_date, 
    COUNT(*) AS total_songs
FROM songs
GROUP BY released_date;
--Tìm bài hát ngắn nhất được phát hành trong mỗi ngày
SELECT 
    released_date, 
    MIN(duration) AS shortest_duration
FROM songs
GROUP BY released_date;
--Tính trung bình thời lượng của tất cả các bài hát phát hành trong mỗi ngày
SELECT 
    released_date, 
    AVG(duration) AS average_duration
FROM songs
GROUP BY released_date;
--Tìm số bài hát có cùng thời lượng
SELECT 
    duration, 
    COUNT(*) AS num_songs
FROM songs
GROUP BY duration;

--Tìm thời lượng trung bình của các bài hát được phát hành trong mỗi tháng
SELECT 
    EXTRACT(MONTH FROM released_date) AS month, 
    ROUND(AVG(duration), 2) AS average_duration
FROM songs
GROUP BY EXTRACT(MONTH FROM released_date);
--Đếm số bài hát được phát hành mỗi năm
SELECT 
    EXTRACT(YEAR FROM released_date) AS year, 
    COUNT(*) AS num_songs
FROM songs
GROUP BY EXTRACT(YEAR FROM released_date);
--HAVING = WHERE của GROUP
--Đếm số bài hát có cùng thời lượng, chỉ hiển thị những thời lượng có nhiều hơn 10 bài hát
SELECT 
    duration, 
    COUNT(*) AS num_songs
FROM songs
GROUP BY duration
HAVING COUNT(*) > 10;
--Tìm thời lượng trung bình của các bài hát được phát hành trong mỗi tháng, 
--chỉ hiển thị những tháng có thời lượng trung bình lớn hơn 300 giây
SELECT 
    EXTRACT(MONTH FROM released_date) AS month, 
    AVG(duration) AS average_duration
FROM songs
GROUP BY EXTRACT(MONTH FROM released_date)
HAVING AVG(duration) > 200;
--Đếm số bài hát được phát hành mỗi năm, chỉ hiển thị những năm có nhiều hơn 100 bài hát
SELECT 
    EXTRACT(YEAR FROM released_date) AS year, 
    COUNT(*) AS num_songs
FROM songs
GROUP BY EXTRACT(YEAR FROM released_date)
HAVING COUNT(*) > 10;
/*
HAVING được sử dụng để lọc các kết quả sau khi áp dụng GROUP BY, 
giống như cách WHERE được sử dụng để lọc các hàng trước khi áp dụng GROUP BY.
*/






