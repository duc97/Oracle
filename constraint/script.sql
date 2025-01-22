DESCRIBE artists;
DESCRIBE songs;
/*
Trong Oracle, bạn có thể đặt các ràng buộc (constraints) cho các thuộc tính 
(cột) trong một bảng để đảm bảo tính nhất quán và độ chính xác của dữ liệu.
-NOT NULL: Một cột không thể chứa giá trị NULL
*/


INSERT INTO songs(song_id, song_name, duration, released_date, lyrics,mp3_path)
VALUES(
    1, 
    N'Yêu thương mộng mơ', 
    240, 
    TO_DATE('2022-01-01', 'YYYY-MM-DD'), 
    N'Trong ánh mắt em là yêu thương mộng mơ, em là nắng trong anh.',
    'yeuthuongmongmo.mp3'
);

ALTER TABLE songs
MODIFY song_name NOT NULL;

--Thêm ràng buộc UNIQUE cho cột song_name
ALTER TABLE songs
ADD CONSTRAINT unq_song_name UNIQUE(song_name)

-- Thêm ràng buộc CHECK cho cột duration, thời lượng không quá 600 giây
ALTER TABLE songs
ADD CONSTRAINT chk_duration 
CHECK(duration <= 600);

ALTER TABLE songs
DROP CONSTRAINT chk_duration;


DELETE FROM songs WHERE song_id=2;

--Thêm ràng buộc CHECK cho cột released_date, 
--ngày phát hành phải trong khoảng từ 1 năm trước đến 1 năm sau ngày hiện tại
ALTER TABLE songs
ADD CONSTRAINT chk_released_date
CHECK (released_date BETWEEN ADD_MONTHS(SYSDATE, -12) AND ADD_MONTHS(SYSDATE, 12));

-- Đặt giá trị mặc định cho cột lyrics là "No content"
ALTER TABLE songs
MODIFY lyrics DEFAULT 'No content';

--thử test xem nào
INSERT INTO songs(song_id, song_name, duration, released_date)
VALUES(
    2, 
    N'Là Anh', 
    500, 
    TO_DATE('2023-05-30', 'YYYY-MM-DD')    
);
SELECT * FROM songs;

-- Đặt giá trị mặc định cho cột mp3_path là ""
ALTER TABLE songs
MODIFY mp3_path DEFAULT ' ';









