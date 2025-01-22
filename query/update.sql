--Thay đổi thông tin với lệnh UPDATE
--Cập nhật email cho một nghệ sĩ cụ thể trong bảng artists
UPDATE artists
SET email = 'lethingocdiep321@example.com'
WHERE artist_id = 6;
--Cập nhật số điện thoại cho một nghệ sĩ cụ thể trong bảng artists
UPDATE artists
SET phone_number = '0123456789'
WHERE artist_id = 6;
--Cập nhật trạng thái hoạt động cho một nghệ sĩ cụ thể trong bảng artists
UPDATE artists
SET active = 1
WHERE artist_id = 3;
--Cập nhật loại nghệ sĩ cho một nghệ sĩ cụ thể trong bảng artists
UPDATE artists
SET artist_type = 'composer'
WHERE artist_id = 4;
--SELECT * FROM artists WHERE artist_id = 4;
--SELECT * FROM songs WHERE song_id = 2;
--Cập nhật thời lượng bài hát trong bảng songs
UPDATE songs
SET duration = 182
WHERE song_id = 2;
--Cập nhật tên bài hát và thời lượng bài hát
UPDATE songs
SET 
    song_name   = 'Chiều mây hồng', 
    duration    = 183
WHERE song_id = 2;
--Cập nhật lời bài hát và ngày phát hành
UPDATE songs
SET 
    lyrics = 'haha Chiều nay mưa tím trên phố đông, giọt mưa rơi nhè nhẹ.', 
    released_date = TO_DATE('2023-03-01', 'YYYY-MM-DD')
WHERE song_id = 2;
/*
Một điều quan trọng cần nhớ là lệnh UPDATE 
có thể thay đổi dữ liệu vĩnh viễn trong cơ sở dữ liệu của bạn. 
Vì vậy, bạn nên cẩn thận khi sử dụng lệnh này và luôn thực hiện backup dữ liệu 
trước khi thực hiện bất kỳ cập nhật nào quan trọng.
*/






