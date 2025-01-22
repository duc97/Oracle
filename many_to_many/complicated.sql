--017-Thiết lập quan hệ ManyToMany giữa các bảng songs, genres, albums
--Tạo bảng genres trước, tạo bảng song_genres sau
CREATE TABLE genres (
    genre_id NUMBER PRIMARY KEY, -- ID của thể loại
    genre_name VARCHAR2(100) NOT NULL -- Tên thể loại
);

INSERT ALL
  INTO genres (genre_id, genre_name) VALUES (1, 'Pop')
  INTO genres (genre_id, genre_name) VALUES (2, 'Rock')
  INTO genres (genre_id, genre_name) VALUES (3, 'Jazz')
  INTO genres (genre_id, genre_name) VALUES (4, 'Classical')
  INTO genres (genre_id, genre_name) VALUES (5, 'Hip-Hop')
  INTO genres (genre_id, genre_name) VALUES (6, 'Country')
  INTO genres (genre_id, genre_name) VALUES (7, 'Electronic')
  INTO genres (genre_id, genre_name) VALUES (8, 'Blues')
  INTO genres (genre_id, genre_name) VALUES (9, 'Reggae')
  INTO genres (genre_id, genre_name) VALUES (10, 'Metal')
  INTO genres (genre_id, genre_name) VALUES (11, N'Nhạc trẻ')
  INTO genres (genre_id, genre_name) VALUES (12, N'Nhạc trữ tình')
  INTO genres (genre_id, genre_name) VALUES (13, N'Nhạc dân ca')
  INTO genres (genre_id, genre_name) VALUES (14, N'Nhạc đỏ')
  INTO genres (genre_id, genre_name) VALUES (15, N'Nhạc phòng trà')
  INTO genres (genre_id, genre_name) VALUES (16, N'Nhạc xanh')
  INTO genres (genre_id, genre_name) VALUES (17, N'Nhạc dân tộc')
  INTO genres (genre_id, genre_name) VALUES (18, N'Nhạc đạo')
  INTO genres (genre_id, genre_name) VALUES (19, N'Nhạc không lời')
  INTO genres (genre_id, genre_name) VALUES (20, N'Nhạc cách mạng')
SELECT * FROM dual;

SELECT * FROM genres;

CREATE TABLE song_genres (
    song_id NUMBER, -- ID của bài hát
    genre_id NUMBER, -- ID của thể loại
    PRIMARY KEY (song_id, genre_id), -- Khóa chính gồm cả ID bài hát và ID thể loại
    FOREIGN KEY (song_id) REFERENCES songs(song_id), -- Khóa ngoại tham chiếu tới bảng SONGS
    FOREIGN KEY (genre_id) REFERENCES genres(genre_id) -- Khóa ngoại tham chiếu tới bảng GENRES
);

CREATE TABLE albums (
    album_id NUMBER PRIMARY KEY, -- ID của album
    album_name VARCHAR2(100) NOT NULL, -- Tên album
    artist_id NUMBER NOT NULL, -- ID của nghệ sĩ phát hành album
    released_date DATE NOT NULL, -- Ngày phát hành album
    FOREIGN KEY (artist_id) REFERENCES artists(artist_id) -- Khóa ngoại tham chiếu tới bảng ARTISTS
);
INSERT ALL
  INTO albums (album_id, album_name, artist_id, released_date) VALUES (1, N'Tình Khúc Bất Hủ', 1, TO_DATE('2022-01-01', 'YYYY-MM-DD'))
  INTO albums (album_id, album_name, artist_id, released_date) VALUES (2, N'Nhịp Đập Của Trái Tim', 2, TO_DATE('2022-02-01', 'YYYY-MM-DD'))
  INTO albums (album_id, album_name, artist_id, released_date) VALUES (3, N'Đường Đến Ngày Vinh Quang', 3, TO_DATE('2022-03-01', 'YYYY-MM-DD'))
  INTO albums (album_id, album_name, artist_id, released_date) VALUES (4, N'Chuyến Đi Về Cuối Cùng', 4, TO_DATE('2022-04-01', 'YYYY-MM-DD'))
  INTO albums (album_id, album_name, artist_id, released_date) VALUES (5, N'Hoa Trôi Trên Sóng Nước', 1, TO_DATE('2022-05-01', 'YYYY-MM-DD'))
  INTO albums (album_id, album_name, artist_id, released_date) VALUES (6, N'Tình Yêu Và Giấc Mơ', 2, TO_DATE('2022-06-01', 'YYYY-MM-DD'))
  INTO albums (album_id, album_name, artist_id, released_date) VALUES (7, N'Tâm Sự Đêm Khuya', 3, TO_DATE('2022-07-01', 'YYYY-MM-DD'))
  INTO albums (album_id, album_name, artist_id, released_date) VALUES (8, N'Những Ngày Mưa Rơi', 4, TO_DATE('2022-08-01', 'YYYY-MM-DD'))
  INTO albums (album_id, album_name, artist_id, released_date) VALUES (9, N'Kí Ức Tuổi Thơ', 1, TO_DATE('2022-09-01', 'YYYY-MM-DD'))
  INTO albums (album_id, album_name, artist_id, released_date) VALUES (10, N'Chuyện Tình Đô Thị', 2, TO_DATE('2022-10-01', 'YYYY-MM-DD'))
  INTO albums (album_id, album_name, artist_id, released_date) VALUES (11, N'Bên Kia Mùa Hạ', 3, TO_DATE('2022-11-01', 'YYYY-MM-DD'))
  INTO albums (album_id, album_name, artist_id, released_date) VALUES (12, N'Gọi Tên Mùa Thu', 4, TO_DATE('2022-12-01', 'YYYY-MM-DD'))
  INTO albums (album_id, album_name, artist_id, released_date) VALUES (13, N'Đường Về Phía Mặt Trời', 1, TO_DATE('2023-01-01', 'YYYY-MM-DD'))
  INTO albums (album_id, album_name, artist_id, released_date) VALUES (14, N'Ký Ức Của Mùa', 2, TO_DATE('2023-02-01', 'YYYY-MM-DD'))
  INTO albums (album_id, album_name, artist_id, released_date) VALUES (15, N'Trăng Và Em', 3, TO_DATE('2023-03-01', 'YYYY-MM-DD'))
  INTO albums (album_id, album_name, artist_id, released_date) VALUES (16, N'Tình Yêu Trên Dải Ngân Hà', 4, TO_DATE('2023-04-01', 'YYYY-MM-DD'))
  INTO albums (album_id, album_name, artist_id, released_date) VALUES (17, N'Giấc Mơ Phai Nhạt', 1, TO_DATE('2023-05-01', 'YYYY-MM-DD'))
  INTO albums (album_id, album_name, artist_id, released_date) VALUES (18, N'Những Bài Hát Của Mùa', 2, TO_DATE('2023-06-01', 'YYYY-MM-DD'))
  INTO albums (album_id, album_name, artist_id, released_date) VALUES (19, N'Cơn Mưa Cuối Mùa', 3, TO_DATE('2023-07-01', 'YYYY-MM-DD'))
  INTO albums (album_id, album_name, artist_id, released_date) VALUES (20, N'Gió Mang Tình Yêu Đến', 4, TO_DATE('2023-08-01', 'YYYY-MM-DD'))
SELECT * FROM dual;

SELECT * FROM albums;
SELECT * FROM songs;
CREATE TABLE album_songs (
    album_id NUMBER, -- ID của album
    song_id NUMBER, -- ID của bài hát
    PRIMARY KEY (album_id, song_id), -- Khóa chính gồm cả ID album và ID bài hát
    FOREIGN KEY (album_id) REFERENCES albums(album_id), -- Khóa ngoại tham chiếu tới bảng ALBUMS    
    FOREIGN KEY (song_id) REFERENCES songs(song_id) -- Khóa ngoại tham chiếu tới bảng SONGS
);

INSERT ALL
  INTO album_songs (album_id, song_id) VALUES (1, 1)
  INTO album_songs (album_id, song_id) VALUES (1, 2)
  INTO album_songs (album_id, song_id) VALUES (2, 3)
  INTO album_songs (album_id, song_id) VALUES (2, 4)
  INTO album_songs (album_id, song_id) VALUES (3, 5)
  INTO album_songs (album_id, song_id) VALUES (3, 6)
  INTO album_songs (album_id, song_id) VALUES (4, 7)
  INTO album_songs (album_id, song_id) VALUES (4, 8)
  INTO album_songs (album_id, song_id) VALUES (5, 9)
  INTO album_songs (album_id, song_id) VALUES (5, 10)
SELECT * FROM dual;

INSERT INTO songs (song_id, song_name, duration, released_date, lyrics, mp3_path)
VALUES(4, N'Tình yêu bình yên',190, TO_DATE('2022-04-01', 'YYYY-MM-DD'), N'Tình yêu anh mang đến bình yên, trong tim em không còn đau.', 'tinhyeubinhyen.mp3');

INSERT INTO songs (song_id, song_name, duration, released_date, lyrics, mp3_path)
VALUES(5, N'Mặt trời vàng', 220, TO_DATE('2022-05-01', 'YYYY-MM-DD'), N'Mặt trời vàng soi sáng cuộc đời ta, niềm hy vọng bừng lên.', 'mattroivang.mp3');

INSERT INTO songs (song_id, song_name, duration, released_date, lyrics, mp3_path)
VALUES(6, N'Ước mơ vươn xa',200, TO_DATE('2022-06-01', 'YYYY-MM-DD'), N'Ước mơ của em vươn xa tận cùng, khám phá thế giới mới.', 'uocmovuonxa.mp3');

INSERT INTO songs (song_id, song_name, duration, released_date, lyrics, mp3_path)
VALUES(7, N'Kỷ niệm ngọt ngào', 230, TO_DATE('2022-07-01', 'YYYY-MM-DD'), N'Trong kỷ niệm ngọt ngào chúng ta, hạnh phúc gắn bó mãi mãi.', 'kyniemngotngao.mp3');

INSERT INTO songs (song_id, song_name, duration, released_date, lyrics, mp3_path)
VALUES(8, N'Đêm hạ sôi động',250, TO_DATE('2022-08-01', 'YYYY-MM-DD'), N'Đêm hạ sôi động cùng những kỷ niệm, tiếng cười vang vọng.', 'demhasoidong.mp3');

INSERT INTO songs (song_id, song_name, duration, released_date, lyrics, mp3_path)
VALUES(9, N'Những giấc mơ đẹp', 180, TO_DATE('2022-09-01', 'YYYY-MM-DD'), N'Những giấc mơ đẹp bên anh tình yêu mới', 'nhunggiacmodepbenanh.mp3');

SELECT * FROM album_songs;



----------------------------------------------------------------------------------------


--018-Thiết kế bảng playlists  chứa danh sách những bài hát mà users(người dùng đăng nhập ứng dụng Music)
--lưu lại
CREATE TABLE users(
    user_id NUMBER CONSTRAINT pk_user_id PRIMARY KEY,--ID người dùng
    username VARCHAR2(50) NOT NULL, --Tên người dùng
    hashed_password VARCHAR2(100), -- mật khẩu sau khi mã hoá(đăng nhập fb, google thì ko lưu mật khẩu)
    password_algorithm VARCHAR2(50), --Thuật toán mã hoá mật khẩu(sha1,sha256,md5...)
    email VARCHAR2(100) UNIQUE NOT NULL,--Email ko được trùng nhau
    facebook_id VARCHAR2(100) UNIQUE,--id của người dùng fb, dùng khi đăng nhập fb
    google_id VARCHAR2(100) UNIQUE,--id của người dùng google, dùng khi đăng nhập google    
    premium NUMBER DEFAULT 0, -- Loại tài khoản: 0 - Miễn phí, 1 - Premium
    date_created DATE  -- Ngày tạo tài khoản
);

--Một user có nhiều playlists
CREATE TABLE playlists(
    playlist_id NUMBER PRIMARY KEY, -- ID của playlist
    user_id NUMBER NOT NULL, -- ID của người tạo playlist
    playlist_name VARCHAR2(100) NOT NULL, -- Tên playlist
    date_created DATE NOT NULL, -- Ngày tạo playlist
    FOREIGN KEY (user_id) REFERENCES users(user_id) -- Khóa ngoại tham chiếu tới bảng USERS
);
--Một playlists có nhiều songs
--Một bài hát(songs) có thể thuộc về nhiều playlists
--Quan hệ giữa songs và playlists là n-n(ManyToMany)
--Giữa 2 bảng songs và playlists phải có 1 bảng association table
--là playlist_songs
CREATE TABLE playlist_songs(
    playlist_id NUMBER, -- ID của playlist
    song_id NUMBER, -- ID của song
    PRIMARY KEY (playlist_id, song_id), -- Khóa chính gồm cả ID playlist và ID bài hát
    FOREIGN KEY (playlist_id) REFERENCES playlists(playlist_id), -- Khóa ngoại tham chiếu tới bảng PLAYLISTS
    FOREIGN KEY (song_id) REFERENCES songs(song_id) -- Khóa ngoại tham chiếu tới bảng SONGS
);
--khi sử dụng App Music, người dùng có thể viết đánh giá(reviews)
--Giá trị từ 1 sao đến 5 sao
--Người dùng có thể viết comment kèm theo đánh giá
CREATE TABLE reviews (
    review_id NUMBER PRIMARY KEY, -- ID của đánh giá
    user_id NUMBER NOT NULL, -- ID của người dùng viết đánh giá
    song_id NUMBER, -- ID của bài hát được đánh giá
    album_id NUMBER, -- ID của album được đánh giá
    artist_id NUMBER, -- ID của nghệ sĩ được đánh giá
    rating NUMBER NOT NULL, -- Đánh giá sao (1-5)
    review_comment CLOB, -- Bình luận của người dùng
    date_created DATE NOT NULL, -- Ngày viết đánh giá
    FOREIGN KEY (user_id) REFERENCES users(user_id), -- Khóa ngoại tham chiếu tới bảng USERS
    FOREIGN KEY (song_id) REFERENCES songs(song_id), -- Khóa ngoại tham chiếu tới bảng SONGS
    FOREIGN KEY (album_id) REFERENCES albums(album_id), -- Khóa ngoại tham chiếu tới bảng ALBUMS
    FOREIGN KEY (artist_id) REFERENCES artists(artist_id) -- Khóa ngoại tham chiếu tới bảng ARTISTS
);

/*
comment là một từ khóa trong Oracle, không thể sử dụng làm tên cột mà không được bao quanh bởi dấu nháy đơn.

*/


















