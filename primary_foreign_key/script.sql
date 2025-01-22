
--013-Các ràng buộc Primary Key và Foreign Key. Quan hệ 1-n(one to many)

DESC artists;
DESC songs;
--1 nghệ sĩ có thể sáng tác 1 hoặc nhiều bài hát
--quan hệ giữa artists và songs là 1-n
--vậy là trong bảng songs phải có trường artist_id
--hiện bảng songs chưa có cột artist_id nên phải thêm vào
ALTER TABLE artists
ADD CONSTRAINT pk_artists PRIMARY KEY(artist_id);

-- Thêm cột artist_id để chuẩn bị phong làm khoá ngoại
ALTER TABLE songs
ADD artist_id NUMBER;

--phong cột artist_id trong bảng songs thành Foreign Key
ALTER TABLE songs
ADD CONSTRAINT fk_artists FOREIGN KEY(artist_id)
REFERENCES artists(artist_id); -- Khóa ngoại tham chiếu tới bảng ARTISTS

--Xoá các ràng buộc(ko làm mất dữ liệu)
-- ALTER TABLE songs DROP CONSTRAINT fk_artists;
-- ALTER TABLE artists DROP CONSTRAINT pk_artists;
-- ALTER TABLE songs DROP CONSTRAINT pk_songs;