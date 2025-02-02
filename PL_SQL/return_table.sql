/*
038-Viết hàm trả về 1 TABLE các bài hát
Để tạo một hàm trả về một bảng trong Oracle, 
bạn có thể sử dụng kiểu TABLE. 
Trước hết, bạn cần tạo một kiểu OBJECT để đại diện cho một hàng trong bảng, 
sau đó tạo một kiểu TABLE dựa trên kiểu OBJECT đó. 
Cuối cùng, tạo một hàm trả về kiểu TABLE.
*/

-- Tạo kiểu OBJECT cho một bài hát
CREATE OR REPLACE TYPE song_obj AS OBJECT (
  song_id NUMBER,
  song_name NVARCHAR2(100),
  duration NUMBER,
  released_date DATE
);
/

-- Tạo kiểu TABLE cho bộ sưu tập các bài hát
CREATE OR REPLACE TYPE song_tab AS TABLE OF song_obj;
/

-- Tạo hàm trả về bảng các bài hát có độ dài nằm trong khoảng duration_min và duration_max
CREATE OR REPLACE FUNCTION get_songs_by_duration(
  p_duration_min NUMBER, 
  p_duration_max NUMBER
) RETURN song_tab AS
  l_songs song_tab := song_tab();--list
BEGIN
  FOR row IN (
    SELECT song_id, song_name, duration, released_date 
    FROM songs 
    WHERE duration BETWEEN p_duration_min AND p_duration_max
  ) LOOP
    -- Thêm từng bài hát vào bảng
    l_songs.extend(); 
    l_songs(l_songs.count) := song_obj(row.song_id, row.song_name, row.duration, row.released_date);
  END LOOP;

  RETURN l_songs;
END;
/

--Để sử dụng hàm này, bạn có thể chạy câu lệnh sau:
SELECT * FROM TABLE(get_songs_by_duration(200, 300));