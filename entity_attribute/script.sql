CREATE TABLE artists(
    artist_id NUMBER,-- ID của nghệ sĩ
    email VARCHAR(100),-- Địa chỉ email của nghệ sĩ
    country VARCHAR2(50),
    artist_name NVARCHAR2(100),-- Tên nghệ sĩ
    description NVARCHAR2(500), -- Mô tả về nghệ sĩ 
    artist_type VARCHAR2(50) NOT NULL, -- Loại nghệ sĩ: "composer" hoặc "performer"
    active NUMBER(1) DEFAULT 1, -- Trạng thái hoạt động của nghệ sĩ (1: active, 0: inactive)
    date_created DATE NOT NULL -- Ngày tạo nghệ sĩ trong hệ thống
);

DESCRIBE artists;

CREATE TABLE songs(
   song_id NUMBER,
   song_name NVARCHAR2(100),-- Tên bài hát
   duration NUMBER, -- Thời lượng bài hát
   released_date DATE,-- Ngày phát hành bài hát
   lyrics CLOB, -- Lời của bài hát  
   --CLOB (Character Large Object) được sử dụng để lưu trữ dữ liệu dạng văn bản có kích thước lớn,
   mp3_path VARCHAR2(200) -- Đường dẫn tới file MP3
);

DESCRIBE songs;