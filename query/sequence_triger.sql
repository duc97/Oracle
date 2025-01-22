--024-Tạo Sequence cho các trường user_id và playlist_id
--Đầu tiên, tạo một sequence
CREATE SEQUENCE seq_playlist
START WITH 1
INCREMENT BY 1
NOMAXVALUE;
--Tiếp theo, tạo một trigger:
CREATE OR REPLACE TRIGGER trigger_playlist_id
BEFORE INSERT ON playlists
FOR EACH ROW
BEGIN
  SELECT seq_playlist.NEXTVAL
  INTO :new.playlist_id
  FROM dual;
END;
/

INSERT INTO playlists (user_id, playlist_name, date_created)
VALUES (1, 'Tình băng giá', TO_DATE('2023/06/02', 'yyyy/mm/dd'));

INSERT INTO playlists (user_id, playlist_name, date_created)
VALUES (1, 'Mùa đông cô đơn', TO_DATE('2023/06/03', 'yyyy/mm/dd'));

INSERT INTO playlists (user_id, playlist_name, date_created)
VALUES (1, 'Hạnh phúc tạm biệt', TO_DATE('2023/06/04', 'yyyy/mm/dd'));

INSERT INTO playlists (user_id, playlist_name, date_created)
VALUES (1, 'Gió mùa thu', TO_DATE('2023/06/05', 'yyyy/mm/dd'));

INSERT INTO playlists (user_id, playlist_name, date_created)
VALUES (1, 'Biển vắng', TO_DATE('2023/06/06', 'yyyy/mm/dd'));

INSERT INTO playlists (user_id, playlist_name, date_created)
VALUES (1, 'Nắng của anh', TO_DATE('2023/06/07', 'yyyy/mm/dd'));

INSERT INTO playlists (user_id, playlist_name, date_created)
VALUES (1, 'Phố không mùa', TO_DATE('2023/06/08', 'yyyy/mm/dd'));

INSERT INTO playlists (user_id, playlist_name, date_created)
VALUES (1, 'Chiều hạ vàng', TO_DATE('2023/06/09', 'yyyy/mm/dd'));

INSERT INTO playlists (user_id, playlist_name, date_created)
VALUES (1, 'Đông về sớm', TO_DATE('2023/06/10', 'yyyy/mm/dd'));

INSERT INTO playlists (user_id, playlist_name, date_created)
VALUES (1, 'Mưa trên cuộc tình', TO_DATE('2023/06/11', 'yyyy/mm/dd'));

/*
:new được sử dụng để tham chiếu đến giá trị mới trong một hàng 
khi đang thêm hoặc cập nhật một hàng dữ liệu.
:old được sử dụng để tham chiếu đến giá trị cũ trong một hàng 
khi đang cập nhật hoặc xóa một hàng dữ liệu.
*/
--Tạo ra sequence cho bảng users
CREATE SEQUENCE seq_user
START WITH 1
INCREMENT BY 1
NOMAXVALUE;
--Tiếp theo, tạo một trigger cho bang users:
CREATE OR REPLACE TRIGGER trigger_user_id
BEFORE INSERT ON users
FOR EACH ROW
BEGIN
  SELECT seq_user.NEXTVAL
  INTO :new.user_id
  FROM dual;
END;
/
INSERT INTO users (username, hashed_password, password_algorithm, email, facebook_id, google_id, premium, date_created)
VALUES ('hoangnd', 'passwordhash1', 'sha256', 'sunlight4d@gmail.com', '124545454', '3214654', 1, TO_DATE('2023/06/02', 'yyyy/mm/dd'));

INSERT INTO users (username, hashed_password, password_algorithm, email, facebook_id, google_id, premium, date_created)
VALUES ('jonny', 'passwordhash22', 'sha256', 'jonny@gmail.com', '32342323', '2223344', 0, TO_DATE('2023/06/02', 'yyyy/mm/dd'));

SELECT * FROM users;



















