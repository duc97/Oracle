--Lấy tất cả thông tin về tất cả các bài hát trong bảng
SELECT * FROM songs;
--Lấy tên và thời lượng của tất cả các bài hát
SELECT 
    song_name, 
    duration    
FROM songs;
--Lấy thông tin tất cả các bài hát có id = 2;
SELECT * FROM songs WHERE song_id=2;
--Lấy tất cả thông tin về các bài hát có thời lượng dưới 5 phút
SELECT song_name, lyrics, duration 
FROM songs
WHERE duration < 300;
--Lấy tên bài hát và đường dẫn MP3 của các bài hát được phát hành năm 2022
SELECT song_name, mp3_path,released_date
FROM songs
WHERE EXTRACT(YEAR FROM released_date) = 2022;
--Sắp xếp tất cả các bài hát theo thời gian phát hành từ mới nhất đến cũ nhất
SELECT song_name, mp3_path,released_date
FROM songs
ORDER BY released_date 
DESC;--DESC = descending order, ASC = ascending order
--Lấy tất cả các bài hát có tên bắt đầu bằng chữ 'N':
SELECT *
FROM songs
WHERE song_name LIKE 'N%';
--Khi bạn sử dụng dấu "%" trong một câu truy vấn SQL, nó đại diện cho bất kỳ chuỗi ký tự nào, bao gồm cả chuỗi trống
--Lấy tất cả các bài hát có tên bắt đầu bằng chữ 'N' hoặc 'n' 
SELECT *
FROM songs
WHERE song_name LIKE 'N%' OR song_name LIKE 'n%';
--Lấy tất cả các bài hát mà đường dẫn mp3 chứa từ "ha":
SELECT *
FROM songs
WHERE mp3_path LIKE '%ha%';

--Lấy tất cả các bài hát phát hành trong tháng 5 (bất kỳ năm nào)
SELECT *
FROM songs
WHERE EXTRACT(MONTH FROM released_date) = 5;
--Lấy 5 bài hát có thời lượng dài nhất
SELECT *
FROM songs
--019-Các câu lệnh SELECT có điều kiện với WHERE,AND,OR ORDER BY
ORDER BY duration DESC
FETCH FIRST 5 ROWS ONLY;

--Lấy tất cả các bài hát có thời lượng từ 4 đến 5 phút
SELECT *
FROM songs
WHERE duration BETWEEN 60*4 AND 60*5;

--Đếm tất cả các bài hát có thời lượng từ 4 đến 5 phút
SELECT COUNT(*)
FROM songs
WHERE duration BETWEEN 60*4 AND 60*5;

--Lấy tất cả các bài hát mà tên không chứa chữ 'nhớ':
SELECT *
FROM songs
WHERE song_name NOT LIKE '%nhớ%';
--Lấy 10 bài hát đầu tiên khi sắp xếp theo tên bài hát trong thứ tự alphabet
SELECT *
FROM songs
ORDER BY song_name ASC
FETCH FIRST 10 ROWS ONLY;
--Lấy tất cả các bài hát phát hành năm 2022 hoặc năm 2023
SELECT *
FROM songs
WHERE EXTRACT(YEAR FROM released_date) = 2022
OR EXTRACT(YEAR FROM released_date) = 2023;
--Lấy tất cả các bài hát có tên bắt đầu bằng 'G' 
--và có thời lượng dưới 5 phút (300 giây):
SELECT *
FROM songs
WHERE song_name LIKE 'G%'
AND duration < 300;
--Lấy tất cả các bài hát phát hành trước năm 2000 hoặc sau năm 2025
SELECT *
FROM songs
WHERE EXTRACT(YEAR FROM released_date) < 2000
OR EXTRACT(YEAR FROM released_date) > 2025;
--Lấy tất cả các bài hát có thời lượng từ 3 đến 5 phút (180 đến 300 giây) hoặc từ 8 đến 10 phút (480 đến 600 giây)
SELECT *
FROM songs
WHERE (duration BETWEEN 180 AND 300) 
OR (duration BETWEEN 480 AND 600);



