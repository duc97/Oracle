/*
036-Thủ tục và hàm, hàm trả về 1 Type và hàm TREAT
Thủ tục (Procedure):
Thủ tục là một đối tượng PL/SQL trong Oracle được sử dụng để thực hiện 
một tập hợp các câu lệnh và tác vụ liên quan. 
Nó không trả về giá trị nhưng có thể có các tham số đầu vào và/hoặc đầu ra.

Thủ tục không trả về giá trị, trong khi hàm trả về một giá trị.
Thủ tục có thể có các tham số đầu vào và/hoặc đầu ra, 
trong khi hàm phải có ít nhất một tham số đầu ra.

-Thủ tục thường được sử dụng để thực hiện các tác vụ thay đổi dữ liệu 
hoặc thực hiện các xử lý phức tạp. 
*/
SELECT * FROM SONGS WHERE SONG_ID=99;
--Thủ tục insert_song
CREATE OR REPLACE PROCEDURE insert_song
                        (p_song_id IN NUMBER, --p=parameter
                        p_song_name IN NVARCHAR2,
                        p_duration IN NUMBER,
                        p_released_date IN DATE,
                        p_lyrics IN CLOB,
                        p_mp3_path IN VARCHAR2)
IS
BEGIN
  INSERT INTO songs (song_id, song_name, duration, released_date, lyrics, mp3_path)
  VALUES (p_song_id, p_song_name, p_duration, p_released_date, p_lyrics, p_mp3_path);
END insert_song;
/

-- Gọi thủ tục
EXEC insert_song(99, 'My Song', 300, '01-JAN-2023', 'These are the lyrics', 'mysong.mp3');
--Hàm get_song từ song_id
/*
CREATE OR REPLACE FUNCTION get_song (p_song_id IN NUMBER)
RETURN NVARCHAR2
IS
  v_song_name NVARCHAR2(100);--v = variable
BEGIN
  SELECT song_name INTO v_song_name FROM songs WHERE song_id = p_song_id;
  RETURN v_song_name;
END get_song;
/

*/
-- Gọi hàm get_song
--SELECT get_song(99) FROM dual;

-- Gọi hàm get_song trả về 1 đối tượng song có đầy đủ các trường thông tin
--Định nghĩa type trả về
CREATE TYPE song_obj AS OBJECT (
  song_id NUMBER,
  song_name NVARCHAR2(100),
  duration NUMBER,
  released_date DATE,
  lyrics CLOB,
  mp3_path VARCHAR2(200)
);
/

--xem danh sách các kiểu dữ liệu (type) hiện có
SELECT type_name
FROM all_types
WHERE owner = 'C##HOANGND';

--Hàm get_song sau khi sửa
CREATE OR REPLACE FUNCTION get_song (p_song_id IN NUMBER)
RETURN song_obj
IS
  v_song song_obj;--v = variable
BEGIN
  SELECT song_obj(song_id, song_name, duration, released_date, lyrics, mp3_path) 
  INTO v_song 
  FROM songs 
  WHERE song_id = p_song_id;
  
  RETURN v_song;
END get_song;
/

-- Gọi hàm get_song
SELECT get_song(99) FROM dual;
--cần sử dụng hàm TREAT để lấy các thuộc tính cụ thể từ đối tượng được trả về
SELECT 
    TREAT(get_song(99) AS song_obj).song_name AS song_name,
    TREAT(get_song(99) AS song_obj).lyrics AS lyrics 
FROM dual;