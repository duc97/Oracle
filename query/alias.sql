--020-Sử dụng bí danh-alias-kết hợp với các hàm MIN, MAX, SUM, COUNT, SUBSTR
SELECT * FROM songs;
-- Lấy tên bài hát (đặt bí danh-alias là "Tên Bài Hát") 
-- và thời lượng bài hát (đặt bí danh là "Thời Lượng"):
SELECT 
	song_name  AS "Tên Bài Hát", 
	duration   AS "Thời Lượng",
    lyrics     "Lời Bài Hát"    
FROM songs;
--Lấy tất cả thông tin từ bảng songs sử dụng bí danh "s"
SELECT 
    s.song_name         "Tên Bài Hát", 
    s.released_date     "Ngày Phát Hành",
    s.lyrics            "Lời Bài Hát"
FROM songs s;
--Đếm tổng số bài hát trong bảng, đặt bí danh cho kết quả là "total_songs"
SELECT 
    COUNT(*) AS "total_songs" 
FROM songs;
--Tính thời lượng trung bình của các bài hát (tính bằng phút), 
--đặt bí danh cho kết quả là "average_duration"
SELECT 
    --Hàm ROUND() là một hàm trong SQL giúp làm tròn số thập phân
    ROUND(AVG(duration/60.0),2) AS "average_duration" 
FROM songs;
--Đếm số bài hát có thời lượng dưới 4 phút, đặt bí danh cho kết quả là "short_songs"
SELECT 
    COUNT(*) AS "short_songs" 
FROM songs s 
WHERE s.duration < 60*4;

--SELECT * FROM songs;
--Tính tổng thời lượng của tất cả các bài hát (tính bằng phút), 
--đặt bí danh cho kết quả là "total_duration"
SELECT 
    ROUND(SUM(duration/60.0),2) AS "total_duration" 
FROM songs;

--Tính thời lượng ngắn nhất của các bài hát, 
--đặt bí danh cho kết quả là "min_duration"
SELECT 
    MIN(duration) AS "min_duration" 
FROM songs;

--Tính thời lượng dài nhất của các bài hát,
--đặt bí danh cho kết quả là "max_duration":
SELECT 
    MAX(duration) AS "max_duration" 
FROM songs;

--Đếm số bài hát có thời lượng từ 3 đến 4 phút, 
--đặt bí danh cho kết quả là "medium_songs"
SELECT 
	COUNT(*) AS "medium_songs" 
FROM songs s 
WHERE s.duration BETWEEN 60*3 AND 60*4;

--Tính thời lượng ngắn nhất và dài nhất của các bài hát (
--tính bằng phút, làm tròn đến 2 chữ số thập phân), 
--đặt bí danh cho các kết quả là "min_duration" và "max_duration" tương ứng
SELECT 
    ROUND(MIN(duration/60.0), 2) AS "min_duration", 
    ROUND(MAX(duration/60.0), 2) AS "max_duration" 
FROM songs;

--Đếm số lượng bài hát và tính tổng thời lượng của tất cả các bài hát 
--(tính bằng phút, làm tròn đến 2 chữ số thập phân), 
--đặt bí danh cho các kết quả là "total_songs" và "total_duration" tương ứng
SELECT 
    COUNT(*) AS "total_songs", 
    ROUND(SUM(duration/60.0), 2) AS "total_duration" 
FROM songs;
--Lấy độ dài của lời bài hát cho mỗi bài, 
--đặt bí danh cho kết quả là "song_lyrics_length"
SELECT 
    song_id, 
    song_name, 
    LENGTH(lyrics) AS "song_lyrics_length" 
FROM songs;

--Lấy 20 ký tự đầu tiên của lời bài hát cho mỗi bài, đặt bí danh cho kết quả là "lyrics_preview"
SELECT 
    song_id, 
    song_name, 
    SUBSTR(lyrics, 1, 20) AS "lyrics_preview" 
FROM songs;
--Lấy bài hát có độ dài lời bài hát là dài nhất, đặt bí danh cho kết quả là "longest_lyrics"
SELECT 
    song_id, 
    song_name, 
    LENGTH(lyrics) AS "longest_lyrics" 
FROM songs 
ORDER BY LENGTH(lyrics) DESC 
FETCH FIRST ROW ONLY;
--Lấy bài hát có độ dài lời bài hát là ngắn nhất, 
--đặt bí danh cho kết quả là "shortest_lyrics":
SELECT 
    song_id, 
    song_name, 
    LENGTH(lyrics) AS "shortest_lyrics" 
FROM songs 
ORDER BY LENGTH(lyrics) ASC 
FETCH FIRST ROW ONLY;

-- Lấy cả bài hát có độ dài lời ngắn nhất và dài nhất trong cùng một kết quả
(SELECT 
    song_id, 
    song_name, 
    LENGTH(lyrics) AS "longest_lyrics" 
FROM songs 
ORDER BY LENGTH(lyrics) DESC 
FETCH FIRST ROW ONLY)
UNION ALL
(SELECT 
    song_id, 
    song_name, 
    LENGTH(lyrics) AS "shortest_lyrics" 
FROM songs 
ORDER BY LENGTH(lyrics) ASC 
FETCH FIRST ROW ONLY);





