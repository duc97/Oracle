--040-Implicit Cursor và Explicit Cursor trong ORACLE
/*
Trong Oracle, một con trỏ (cursor) được sử dụng để quản lý 
các hàng cụ thể của kết quả truy vấn. 
Một truy vấn SQL thông thường sẽ trả về một tập hợp các hàng, 
và con trỏ cho phép bạn xử lý các hàng này một cách tuần tự.

Có hai loại con trỏ trong Oracle:
Implicit Cursors: Được tự động tạo ra bởi Oracle khi 
bạn thực thi một truy vấn SQL. 
Explicit Cursors: Được định nghĩa bởi người dùng 
*/
--ví dụ về việc sử dụng implicit cursor trong PL/SQL
DECLARE 
  my_song_name songs.song_name%TYPE; 
BEGIN 
  SELECT song_name 
  INTO   my_song_name 
  FROM   songs 
  WHERE  song_id = 1; 
  --implicit cursor là một con trỏ được tạo tự động cho 
  --mỗi câu lệnh DML (Data Manipulation Language) như INSERT, UPDATE, và DELETE
  --cũng như cho một số câu lệnh SELECT mà không trả về nhiều hơn một hàng   
  DBMS_OUTPUT.PUT_LINE('Tên bài hát: ' || my_song_name); 
EXCEPTION 
  WHEN NO_DATA_FOUND THEN 
    DBMS_OUTPUT.PUT_LINE('Không tìm thấy bài hát với ID 1'); 
  WHEN TOO_MANY_ROWS THEN -- bigger than 1
    DBMS_OUTPUT.PUT_LINE('Nhiều hơn một bài hát có ID 1');
  WHEN OTHERS THEN
    DBMS_OUTPUT.PUT_LINE('Lỗi không xác định: ' || SQLCODE || ' : ' || SQLERRM);  
END; 
/
--sử dụng implicit cursor với lệnh UPDATE
DECLARE 
  rows_updated NUMBER;
BEGIN 
  UPDATE songs
  SET duration = duration + 1
  WHERE song_id = 1;

  rows_updated := SQL%ROWCOUNT;
  --trả về số hàng bị ảnh hưởng (được cập nhật) bởi lệnh UPDATE
  DBMS_OUTPUT.PUT_LINE('Số hàng được cập nhật: ' || rows_updated); 
  IF rows_updated = 0 THEN
    DBMS_OUTPUT.PUT_LINE('Không tìm thấy bài hát với ID 1 để update');
  END IF;
EXCEPTION 
  WHEN OTHERS THEN
    DBMS_OUTPUT.PUT_LINE('Lỗi không xác định: ' || SQLCODE || ' : ' || SQLERRM);
    ROLLBACK;  -- Nếu có lỗi, hủy bỏ cập nhật  
END; 
/

SELECT * FROM songs WHERE SONG_ID=1;
--Explicit cursors trong PL/SQL cho phép bạn thao tác 
--trên các dòng của một bộ kết quả một cách tường minh. 
--Dưới đây là một ví dụ về cách sử dụng explicit cursor
DECLARE 
  CURSOR song_cursor IS 
    SELECT song_name, duration 
    FROM songs
    WHERE duration > 200; -- Sử dụng cursor cho các bài hát dài hơn 200 giây
  --khai báo một biến (song_record) có cấu trúc 
  --giống như một dòng trong bộ kết quả của cursor  
  song_record song_cursor%ROWTYPE;
BEGIN 
  OPEN song_cursor;--mở cursor (OPEN song_cursor), sử dụng vòng lặp để lấy từng dòng
  LOOP
    FETCH song_cursor INTO song_record;
    EXIT WHEN song_cursor%NOTFOUND; -- Kết thúc vòng lặp khi hết dữ liệu
    DBMS_OUTPUT.PUT_LINE('Bài hát: ' || song_record.song_name || ', Thời lượng: ' || song_record.duration);
  END LOOP;
  CLOSE song_cursor;
END; 
/