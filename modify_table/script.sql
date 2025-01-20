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
    song_id NUMBER, -- ID của bài hát
    song_name NVARCHAR2(100), -- Tên bài hát    
    duration NUMBER NOT NULL, -- Thời lượng bài hát
    released_date DATE, -- Ngày phát hành bài hát
    lyrics CLOB, -- Lời của bài hát
    --CLOB(Character Large Object) được dùng để lưu trữ dữ liệu dạng văn bản có kích thước lớn
    mp3_path VARCHAR2(200) -- Đường dẫn tới file MP3    
);

DESCRIBE songs;
--Đổi tên bảng
--ALTER TABLE songs RENAME TO bai_hat;
ALTER TABLE bai_hat RENAME TO songs;
/*
Tên bảng ko chứa ký tự đặc biệt, phản ánh rõ nội dung
Tên bảng là danh từ, ko chứa từ khóa SQL như SELECT, INSERT, UPDATE, DELETE,...
Tên bảng không phân biệt chữ hoa và chữ thường trong Oracle. 
Tên bảng phải là duy nhất trong cơ sở dữ liệu. 
Không thể có hai bảng trong cùng một cơ sở dữ liệu có cùng tên.
*/

--Xoá bảng + toàn bộ dữ liệu trong bảng(rất thận trọng)
DROP TABLE songs;
/*
Sau khi thực thi lệnh này, 
bảng "songs" sẽ bị xóa khỏi cơ sở dữ liệu Oracle của bạn. 
Tất cả dữ liệu bên trong bảng cũng sẽ bị xóa đi và không thể khôi phục lại được.
*/








