--014-Đưa các constraints vào câu lệnh tạo bảng
DESC artists;
DESC songs;


SELECT * FROM artists;
SELECT * FROM songs;

--xoá hai bảng này => thận trọng, ko thực hành với dữ liệu thực
DROP TABLE songs;
DROP TABLE artists;--1 artists có nhiều(N) songs => phải xoá songs trước

--1 artists có nhiều(N) songs, phải tạo bảng artists trước, bảng songs sau
CREATE TABLE artists (
    artist_id NUMBER CONSTRAINT pk_artist_id PRIMARY KEY, -- ID của nghệ sĩ
    email VARCHAR2(100), -- Địa chỉ email của nghệ sĩ
    phone_number VARCHAR2(20), -- Số điện thoại liên lạc của nghệ sĩ
    country VARCHAR2(50), -- Quốc gia hoặc vùng lãnh thổ của nghệ sĩ
    artist_name NVARCHAR2(100) CONSTRAINT nn_artist_name NOT NULL, -- Tên nghệ sĩ
    description NVARCHAR2(500), -- Mô tả về nghệ sĩ    
    artist_type VARCHAR2(50) CONSTRAINT nn_artist_type NOT NULL, -- Loại nghệ sĩ: "composer" hoặc "performer"
    active NUMBER(1) DEFAULT 1, -- Trạng thái hoạt động của nghệ sĩ (1: active, 0: inactive)
    date_created DATE CONSTRAINT nn_date_created NOT NULL -- Ngày tạo nghệ sĩ trong hệ thống
);

CREATE TABLE songs (
    song_id NUMBER PRIMARY KEY, -- ID của bài hát
    song_name NVARCHAR2(100) NOT NULL, -- Tên bài hát
    artist_id NUMBER NOT NULL, -- ID của nghệ sĩ thể hiện bài hát
    duration NUMBER CHECK(duration <= 600), -- Thời lượng bài hát
    released_date DATE NOT NULL, -- Ngày phát hành bài hát
    lyrics CLOB, -- Lời của bài hát
    mp3_path VARCHAR2(200), -- Đường dẫn tới file MP3
    FOREIGN KEY (artist_id) REFERENCES artists(artist_id) -- Khóa ngoại tham chiếu tới bảng ARTISTS
);
--ưu, nhược điểm khi thêm constraints vào câu lệnh tạo bảng ?



