--016-Quan hệ n-n,Many-To-Many và bảng liên kết-Association Table
--xóa cột "artist_id" khỏi bảng "songs":
ALTER TABLE songs DROP COLUMN artist_id;
CREATE TABLE song_composers(
    song_id NUMBER, -- ID của bài hát
    composer_id NUMBER, -- ID của người sáng tác
    PRIMARY KEY (song_id, composer_id), -- Khóa chính gồm cả ID bài hát và ID người sáng tác
    FOREIGN KEY (song_id) REFERENCES songs(song_id), -- Khóa ngoại tham chiếu tới bảng SONGS
    FOREIGN KEY (composer_id) REFERENCES artists(artist_id) -- Khóa ngoại tham chiếu tới bảng ARTISTS
);

CREATE TABLE song_performers (
    song_id NUMBER, -- ID của bài hát
    performer_id NUMBER, -- ID của ca sĩ biểu diễn
    PRIMARY KEY (song_id, performer_id), -- Khóa chính gồm cả ID bài hát và ID ca sĩ biểu diễn
    FOREIGN KEY (song_id) REFERENCES songs(song_id), -- Khóa ngoại tham chiếu tới bảng SONGS
    FOREIGN KEY (performer_id) REFERENCES artists(artist_id) -- Khóa ngoại tham chiếu tới bảng ARTISTS
);

SELECT * FROM songs;

SELECT * FROM artists;

SELECT * FROM song_composers;
SELECT * FROM song_performers;

INSERT INTO song_composers(composer_id, song_id)
VALUES(2, 2);

INSERT INTO song_performers(performer_id, song_id)
VALUES(7, 3);
--Làm thế nào để kiểm tra: chỉ có artist là composer mới được insert vào bảng song_composers
--chỉ có artist là performer mới được insert vào bảng song_performers
--Trigger => sẽ học sau