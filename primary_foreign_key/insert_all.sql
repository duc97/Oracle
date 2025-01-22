--015-INSERT dữ liệu vào bảng đã có constraints.Thứ tự thêm dữ liệu
SELECT * FROM artists;
--Với quan hệ 1-n, khi insert phải insert bảng 1 trước, bảng n sau
INSERT ALL
    INTO artists (artist_id, email, phone_number, country, artist_name, description, artist_type, active, date_created)
    VALUES(1, 'trannhanton@hotmail.com', '0123456789', 'Việt Nam', N'Trần Nhân Tốn', 'Nghệ sĩ với tài năng và sáng tạo độc đáo.', 'performer', 1, SYSDATE)
    
    INTO artists (artist_id, email, phone_number, country, artist_name, description, artist_type, active, date_created)
    VALUES(2, 'hoangthuylinh@gmail.com', '0987654321', 'Việt Nam', N'Lê Thùy Linh', 'Nghệ sĩ tài năng với giọng ca truyền cảm.', 'composer', 1, SYSDATE)
    
    INTO artists (artist_id, email, phone_number, country, artist_name, description, artist_type, active, date_created)
    VALUES(3, 'ngothanhvan@gmail.com', '0369248710', 'Việt Nam', N'Ngô Thanh Vân', 'Nghệ sĩ đa năng với khả năng diễn xuất và hát hay.', 'performer', 0, SYSDATE)
    
    INTO artists (artist_id, email, phone_number, country, artist_name, description, artist_type, active, date_created)
    VALUES(4, 'vucattuong@yahoo.com', '0912345678', 'Việt Nam', N'Cát Tường', 'Nghệ sĩ tài năng và cá tính với phong cách âm nhạc độc đáo.', 'composer', 1, SYSDATE)
    
    INTO artists (artist_id, email, phone_number, country, artist_name, description, artist_type, active, date_created)
    VALUES(5, 'domvinhhung@gmail.com', '0847612593', 'Việt Nam', N'Đờm Vinh Hưng', 'Nghệ sĩ với khả năng biểu diễn sân khấu ấn tượng và giọng hát mạnh mẽ.', 'performer', 1, SYSDATE)
    
    INTO artists (artist_id, email, phone_number, country, artist_name, description, artist_type, active, date_created)
    VALUES(6, 'lethingocdiep@yahoo.com', '0586497312', 'Việt Nam', N'Lê Thị Ngọc Diệp', 'Nghệ sĩ mới nổi với tài năng diễn xuất và giọng hát ấn tượng.', 'composer', 0, SYSDATE)
    
    INTO artists (artist_id, email, phone_number, country, artist_name, description, artist_type, active, date_created)
    VALUES(7, 'danglenguyenvu@gmail.com', '0314752869', 'Việt Nam', N'Đặng Lê Nguyên Vũ', 'Nghệ sĩ xuất sắc với sự sáng tạo và thành công trong sự nghiệp âm nhạc.', 'performer', 1, SYSDATE)
    
    INTO artists (artist_id, email, phone_number, country, artist_name, description, artist_type, active, date_created)
    VALUES(8, 'nguyenthikimtien@yahoo.com', '0976823451', 'Việt Nam', N'Nguyễn Thị Tiên', 'Nghệ sĩ đa tài với khả năng biểu diễn và sáng tác âm nhạc.', 'composer', 0, SYSDATE)
    
    INTO artists (artist_id, email, phone_number, country, artist_name, description, artist_type, active, date_created)
    VALUES(9, 'lyhai@gmail.com', '0659128374', 'Việt Nam', N'Lý Hải', 'Nghệ sĩ vui nhộn và sáng tạo với các sản phẩm âm nhạc đặc sắc.', 'performer', 1, SYSDATE)
    
    INTO artists (artist_id, email, phone_number, country, artist_name, description, artist_type, active, date_created)
    VALUES(10, 'phamhongphuoc@yahoo.com', '0392847561', 'Việt Nam', N'Phạm Hồng Phước', 'Nghệ sĩ tài năng với phong cách biểu diễn đa dạng và cuốn hút.', 'composer', 1, SYSDATE)
    
    INTO artists (artist_id, email, phone_number, country, artist_name, description, artist_type, active, date_created)
    VALUES(11, 'nguyenthitham@gmail.com', '0918562937', 'Việt Nam', N'Nguyễn Thị Thắm', 'Nghệ sĩ trẻ triển vọng với giọng hát trong trẻo và nội lực.', 'performer', 1, SYSDATE)
    
    INTO artists (artist_id, email, phone_number, country, artist_name, description, artist_type, active, date_created)
    VALUES(12, 'tranvansuong@yahoo.com', '0987654321', 'Việt Nam', N'Trần Văn Sương', 'Nghệ sĩ có khả năng biểu diễn tài tình và chất giọng truyền cảm.', 'performer', 1, SYSDATE)
    
    INTO artists (artist_id, email, phone_number, country, artist_name, description, artist_type, active, date_created)
    VALUES(13, 'vuongthihang@gmail.com', '0912345678', 'Việt Nam', N'Vương Thị Hằng', 'Nghệ sĩ nổi tiếng với sự sáng tạo và phong cách biểu diễn độc đáo.', 'performer', 1, SYSDATE)
    
    INTO artists (artist_id, email, phone_number, country, artist_name, description, artist_type, active, date_created)
    VALUES(14, 'lethithao@yahoo.com', '0847612593', 'Việt Nam', N'Lê Thị Thảo', 'Nghệ sĩ có giọng hát trong trẻo và khả năng biểu diễn ấn tượng.', 'performer', 1, SYSDATE)
    
    INTO artists (artist_id, email, phone_number, country, artist_name, description, artist_type, active, date_created)
    VALUES(15, 'nguyenvantrung@gmail.com', '0987456321', 'Việt Nam', N'Nguyễn Văn Trung', 'Nghệ sĩ với khả năng sáng tạo và biểu diễn đa dạng.', 'composer', 1, SYSDATE)
    
    INTO artists (artist_id, email, phone_number, country, artist_name, description, artist_type, active, date_created)
    VALUES(16, 'dinhquanglinh@yahoo.com', '0976823451', 'Việt Nam', N'Đinh Quang Linh', 'Nghệ sĩ trẻ triển vọng với phong cách âm nhạc độc đáo.', 'composer', 1, SYSDATE)
    
    INTO artists (artist_id, email, phone_number, country, artist_name, description, artist_type, active, date_created)
    VALUES(17, 'trinhthikimthoa@gmail.com', '0659128374', 'Việt Nam', N'Trịnh Thị Kim Thoa', 'Nghệ sĩ có giọng hát truyền cảm và khả năng sáng tác xuất sắc.', 'composer', 1, SYSDATE)
    
    INTO artists (artist_id, email, phone_number, country, artist_name, description, artist_type, active, date_created)
    VALUES(18, 'hoangxuanvinh@yahoo.com', '0369248710', 'Việt Nam', N'Hoàng Xuân Vinh', 'Nghệ sĩ trẻ triển vọng với tài năng biểu diễn và sáng tác âm nhạc.', 'performer', 1, SYSDATE)
    
    INTO artists (artist_id, email, phone_number, country, artist_name, description, artist_type, active, date_created)
    VALUES(19, 'lethihuong@gmail.com', '0975426318', 'Việt Nam', N'Lê Thị Hương', 'Nghệ sĩ có giọng hát trong trẻo và phong cách biểu diễn đặc biệt.', 'performer', 1, SYSDATE)
    
    INTO artists (artist_id, email, phone_number, country, artist_name, description, artist_type, active, date_created)
    VALUES(20, 'nguyenhongminh@yahoo.com', '0918234567', 'Việt Nam', N'Nguyễn Hồng Minh', 'Nghệ sĩ đa năng với khả năng biểu diễn và sáng tác âm nhạc độc đáo.', 'composer', 1, SYSDATE)
--kết thúc câu lệnh insert all
SELECT * FROM dual;

--xoá hết dữ liệu trong bảng artists trước khi insert lại
--DELETE FROM artists WHERE 1=1;
SELECT * FROM songs;
--Thêm dữ liệu vào bảng songs:
INSERT INTO songs (song_id, song_name, artist_id, duration, released_date, lyrics, mp3_path)
VALUES(1, N'Yêu thương mộng mơ', 1, 240, TO_DATE('2022-01-01', 'YYYY-MM-DD'), N'Trong ánh mắt em là yêu thương mộng mơ, em là nắng trong anh.', 'yeuthuongmongmo.mp3');

INSERT INTO songs (song_id, song_name, artist_id, duration, released_date, lyrics, mp3_path)
VALUES(2, N'Chiều mưa tím', 2, 180, TO_DATE('2022-02-01', 'YYYY-MM-DD'), N'Chiều nay mưa tím trên phố đông, giọt mưa rơi nhè nhẹ.', 'chieumuatim.mp3');
INSERT INTO songs (song_id, song_name, artist_id, duration, released_date, lyrics, mp3_path)
VALUES(3, N'Gửi anh xa nhớ', 3, 210, TO_DATE('2022-03-01', 'YYYY-MM-DD'), N'Gửi anh những hồi ức ngọt ngào, từng khoảnh khắc bên nhau.', 'guianh-xanhớ.mp3');
INSERT INTO songs (song_id, song_name, artist_id, duration, released_date, lyrics, mp3_path)
VALUES(4, N'Tình yêu bình yên', 4, 4, 190, TO_DATE('2022-04-01', 'YYYY-MM-DD'), N'Tình yêu anh mang đến bình yên, trong tim em không còn đau.', 'tinhyeubinhyen.mp3');
INSERT INTO songs (song_id, song_name, artist_id, duration, released_date, lyrics, mp3_path)
VALUES(5, N'Mặt trời vàng', 5, 5, 220, TO_DATE('2022-05-01', 'YYYY-MM-DD'), N'Mặt trời vàng soi sáng cuộc đời ta, niềm hy vọng bừng lên.', 'mattroivang.mp3');
INSERT INTO songs (song_id, song_name, artist_id, duration, released_date, lyrics, mp3_path)
VALUES(6, N'Ước mơ vươn xa', 6, 6, 200, TO_DATE('2022-06-01', 'YYYY-MM-DD'), N'Ước mơ của em vươn xa tận cùng, khám phá thế giới mới.', 'uocmovuonxa.mp3');
INSERT INTO songs (song_id, song_name, artist_id, duration, released_date, lyrics, mp3_path)
VALUES(7, N'Kỷ niệm ngọt ngào', 7, 7, 230, TO_DATE('2022-07-01', 'YYYY-MM-DD'), N'Trong kỷ niệm ngọt ngào chúng ta, hạnh phúc gắn bó mãi mãi.', 'kyniemngotngao.mp3');
INSERT INTO songs (song_id, song_name, artist_id, duration, released_date, lyrics, mp3_path)
VALUES(8, N'Đêm hạ sôi động', 8, 8, 250, TO_DATE('2022-08-01', 'YYYY-MM-DD'), N'Đêm hạ sôi động cùng những kỷ niệm, tiếng cười vang vọng.', 'demhasoidong.mp3');
INSERT INTO songs (song_id, song_name, artist_id, duration, released_date, lyrics, mp3_path)
VALUES(9, N'Những giấc mơ đẹp', 9, 9, 180, TO_DATE('2022-09-01', 'YYYY-MM-DD'), N'Những giấc mơ đẹp bên anh tình yêu mới', 'nhunggiacmodepbenanh.mp3');
INSERT INTO songs (song_id, song_name, artist_id, duration, released_date, lyrics, mp3_path)
VALUES(10, N'Hạnh phúc vỡ òa', 1, 270, TO_DATE('2022-10-01', 'YYYY-MM-DD'), N'Trong vòng tay em, hạnh phúc vỡ òa khắp nơi.', 'hanhphucvooa.mp3');
INSERT INTO songs (song_id, song_name, artist_id, duration, released_date, lyrics, mp3_path)
VALUES(11, N'Ngọt ngào tuổi học trò', 2, 190, TO_DATE('2022-11-01', 'YYYY-MM-DD'), N'Ngọt ngào tuổi học trò, kỷ niệm mãi trong lòng.', 'ngotngao-tuoihoctro.mp3');
INSERT INTO songs (song_id, song_name, artist_id, duration, released_date, lyrics, mp3_path)
VALUES(12, N'Đánh thức giấc mơ', 3, 220, TO_DATE('2022-12-01', 'YYYY-MM-DD'), N'Đánh thức giấc mơ, vươn tới những thành công.', 'danhthuc-giacmo.mp3');
INSERT INTO songs (song_id, song_name, artist_id, duration, released_date, lyrics, mp3_path)
VALUES(13, N'Lạc vào kỷ niệm', 4, 180, TO_DATE('2023-01-01', 'YYYY-MM-DD'), N'Lạc vào kỷ niệm, quay về ngày xưa đầy hạnh phúc.', 'lacvao-kyniem.mp3');
INSERT INTO songs (song_id, song_name, artist_id, duration, released_date, lyrics, mp3_path)
VALUES(14, N'Mong manh tình yêu', 5, 240, TO_DATE('2023-02-01', 'YYYY-MM-DD'), N'Mong manh tình yêu, trong tim những điều tuyệt vời nhất.', 'mongmanh-tinhyeu.mp3');
INSERT INTO songs (song_id, song_name, artist_id, duration, released_date, lyrics, mp3_path)
VALUES(15, N'Vượt qua khó khăn', 6, 200, TO_DATE('2023-03-01', 'YYYY-MM-DD'), N'Vượt qua khó khăn, bước tiến tới thành công.', 'vuotqua-khokhan.mp3');
INSERT INTO songs (song_id, song_name, artist_id, duration, released_date, lyrics, mp3_path)
VALUES(16, N'Góc nhỏ cuộc sống', 7, 230, TO_DATE('2023-04-01', 'YYYY-MM-DD'), N'Góc nhỏ cuộc sống, nơi tình yêu và hy vọng bắt đầu.', 'gocnho-cuocsong.mp3');
INSERT INTO songs (song_id, song_name, artist_id, duration, released_date, lyrics, mp3_path)
VALUES(17, N'Lắng nghe trái tim', 8, 250, TO_DATE('2023-05-01', 'YYYY-MM-DD'), N'Lắng nghe trái tim, đi theo những giấc mơ của mình.', 'langnghe-traithim.mp3');
INSERT INTO songs (song_id, song_name, artist_id, duration, released_date, lyrics, mp3_path)
VALUES(18, N'Bước đi tự tin', 9, 190, TO_DATE('2023-06-01', 'YYYY-MM-DD'), N'Bước đi tự tin, chinh phục mọi thách thức.', 'buocdi-tutin.mp3');
INSERT INTO songs (song_id, song_name, artist_id, duration, released_date, lyrics, mp3_path)
VALUES(19, N'Ánh sáng hy vọng', 10, 210, TO_DATE('2023-07-01', 'YYYY-MM-DD'), N'Ánh sáng hy vọng hi vọng tràn trề, ánh nắng xuân','anhsanghivong-tutin.mp3');
INSERT INTO songs (song_id, song_name, artist_id, duration, released_date, lyrics, mp3_path)
VALUES(20, N'Giữ lấy hạnh phúc', 1, 230, TO_DATE('2023-08-01', 'YYYY-MM-DD'), N'Giữ lấy hạnh phúc, không để nó trôi qua tay.', 'gupilai-hanhphuc.mp3');
INSERT INTO songs (song_id, song_name, artist_id, duration, released_date, lyrics, mp3_path)
VALUES(21, N'Màu sắc cuộc sống', 2, 200, TO_DATE('2023-09-01', 'YYYY-MM-DD'), N'Màu sắc cuộc sống, tươi đẹp như những ánh mắt của em.', 'mausac-cuocsong.mp3');

INSERT INTO songs (song_id, song_name, artist_id, duration, released_date, lyrics, mp3_path)
VALUES(22, N'Trở về ngày xanh', 3, 240, TO_DATE('2023-10-01', 'YYYY-MM-DD'), N'Trở về ngày xanh, quay về tuổi thơ của chúng ta.', 'trove-ngayxanh.mp3');

INSERT INTO songs (song_id, song_name, artist_id, duration, released_date, lyrics, mp3_path)
VALUES(23, N'Hạnh phúc trong tay', 4, 180, TO_DATE('2023-11-01', 'YYYY-MM-DD'), N'Hạnh phúc trong tay, không cần nhiều mà chỉ cần yêu.', 'hanhphuc-trongtay.mp3');

INSERT INTO songs (song_id, song_name, artist_id, duration, released_date, lyrics, mp3_path)
VALUES(24, N'Nắng ấm trên cao', 5, 220, TO_DATE('2023-12-01', 'YYYY-MM-DD'), N'Nắng ấm trên cao, là nơi ta tìm thấy niềm vui.', 'nangam-trencao.mp3');

INSERT INTO songs (song_id, song_name, artist_id, duration, released_date, lyrics, mp3_path)
VALUES(25, N'Tuổi thanh xuân', 6, 190, TO_DATE('2024-01-01', 'YYYY-MM-DD'), N'Tuổi thanh xuân, là khoảng thời gian đáng nhớ nhất.', 'tuoithanhxuan.mp3');

INSERT INTO songs (song_id, song_name, artist_id, duration, released_date, lyrics, mp3_path)
VALUES(26, N'Khát vọng vươn cao', 7, 210, TO_DATE('2024-02-01', 'YYYY-MM-DD'), N'Khát vọng vươn cao, không ngừng khao khát thành công.', 'khatvong-vuoncao.mp3');

INSERT INTO songs (song_id, song_name, artist_id, duration, released_date, lyrics, mp3_path)
VALUES(27, N'Gửi những kỷ niệm', 8, 230, TO_DATE('2024-03-01', 'YYYY-MM-DD'), N'Gửi những kỷ niệm, trong tim cất giữ mãi mãi.', 'guinhung-kyniem.mp3');

INSERT INTO songs (song_id, song_name, artist_id, duration, released_date, lyrics, mp3_path)
VALUES(28, N'Mơ mộng tình yêu', 9, 250, TO_DATE('2024-04-01', 'YYYY-MM-DD'), N'Mơ mộng tình yêu, nở hoa trong trái tim của chúng ta.', 'momong-tinhyeu.mp3');

INSERT INTO songs (song_id, song_name, artist_id, duration, released_date, lyrics, mp3_path)
VALUES(29, N'Hạnh phúc bên nhau', 1, 200, TO_DATE('2024-06-01', 'YYYY-MM-DD'), N'Hạnh phúc bên nhau, đánh thức tình yêu đong đầy.', 'hanhphuc-bennhau.mp3');

INSERT INTO songs (song_id, song_name, artist_id, duration, released_date, lyrics, mp3_path)
VALUES(30, N'Điều tuyệt vời nhất', 2, 230, TO_DATE('2024-07-01', 'YYYY-MM-DD'), N'Điều tuyệt vời nhất là được yêu và yêu người khác.', 'dieutuyetvoi-nhat.mp3');

INSERT INTO songs (song_id, song_name, artist_id, duration, released_date, lyrics, mp3_path)
VALUES(31, N'Gương mặt của em', 3, 190, TO_DATE('2024-08-01', 'YYYY-MM-DD'), N'Gương mặt của em luôn sáng trong trí nhớ của anh.', 'guongmat-cuaem.mp3');

INSERT INTO songs (song_id, song_name, artist_id, duration, released_date, lyrics, mp3_path)
VALUES(32, N'Chạm vào trái tim', 4, 210, TO_DATE('2024-09-01', 'YYYY-MM-DD'), N'Chạm vào trái tim, hiểu được cảm xúc đằm thắm nhất.', 'chamvao-traithim.mp3');

INSERT INTO songs (song_id, song_name, artist_id, duration, released_date, lyrics, mp3_path)
VALUES(33, N'Nơi bình yên tìm về', 5, 240, TO_DATE('2024-10-01', 'YYYY-MM-DD'), N'Nơi bình yên tìm về, trong vòng tay ấm áp của người thân.', 'noibinhyen-timve.mp3');

INSERT INTO songs (song_id, song_name, artist_id, duration, released_date, lyrics, mp3_path)
VALUES(34, N'Trọn vẹn hạnh phúc', 6, 180, TO_DATE('2024-11-01', 'YYYY-MM-DD'), N'Trọn vẹn hạnh phúc, là khi được bên nhau mỗi ngày.', 'tronven-hanhphuc.mp3');

INSERT INTO songs (song_id, song_name, artist_id, duration, released_date, lyrics, mp3_path)
VALUES(35, N'Ngày mới nắng rực', 7, 220, TO_DATE('2024-12-01', 'YYYY-MM-DD'), N'Ngày mới nắng rực, mang đến hy vọng và niềm tin.', 'ngaymoi-nangruc.mp3');

INSERT INTO songs (song_id, song_name, artist_id, duration, released_date, lyrics, mp3_path)
VALUES(36, N'Tình yêu mãi mãi', 8, 250, TO_DATE('2025-01-01', 'YYYY-MM-DD'), N'Tình yêu mãi mãi, không phai nhạt theo thời gian.', 'tinhyeu-maimai.mp3');

INSERT INTO songs (song_id, song_name, artist_id, duration, released_date, lyrics, mp3_path)
VALUES(37, N'Hòa ca tình yêu', 9, 200, TO_DATE('2025-02-01', 'YYYY-MM-DD'), N'Hòa ca tình yêu, những điệu nhạc trái tim rung động.', 'hoaca-tinhyeu.mp3');

INSERT INTO songs (song_id, song_name, artist_id, duration, released_date, lyrics, mp3_path)
VALUES(38, N'Trở về ngày ấy', 1, 180, TO_DATE('2025-04-01', 'YYYY-MM-DD'), N'Trở về ngày ấy, nhớ về những kỷ niệm đáng nhớ.', 'trove-ngayay.mp3');

INSERT INTO songs (song_id, song_name, artist_id, duration, released_date, lyrics, mp3_path)
VALUES(39, N'Nắng và mưa', 2, 210, TO_DATE('2025-05-01', 'YYYY-MM-DD'), N'Nắng và mưa, là những cảm xúc đan xen trong tim.', 'nangvamua.mp3');

INSERT INTO songs (song_id, song_name, artist_id, duration, released_date, lyrics, mp3_path)
VALUES(40, N'Đánh thức niềm tin', 3, 240, TO_DATE('2025-06-01', 'YYYY-MM-DD'), N'Đánh thức niềm tin, vươn tới những ước mơ mới.', 'danhthuc-niemtin.mp3');

INSERT INTO songs (song_id, song_name, artist_id, duration, released_date, lyrics, mp3_path)
VALUES(41, N'Trở thành chính mình', 4, 190, TO_DATE('2025-07-01', 'YYYY-MM-DD'), N'Trở thành chính mình, tỏa sáng với cái tôi độc đáo.', 'trothanh-chinhminh.mp3');

INSERT INTO songs (song_id, song_name, artist_id, duration, released_date, lyrics, mp3_path)
VALUES(42, N'Ánh sáng cuộc sống', 5, 220, TO_DATE('2025-08-01', 'YYYY-MM-DD'), N'Ánh sáng cuộc sống, khám phá vẻ đẹp vô tận.', 'anhsang-cuocsong.mp3');

INSERT INTO songs (song_id, song_name, artist_id, duration, released_date, lyrics, mp3_path)
VALUES(43, N'Giữ lửa tình yêu', 6, 250, TO_DATE('2025-09-01', 'YYYY-MM-DD'), N'Giữ lửa tình yêu, để nó rực cháy mãi trong lòng.', 'gu-lua-tinhyeu.mp3');

INSERT INTO songs (song_id, song_name, artist_id, duration, released_date, lyrics, mp3_path)
VALUES(44, N'Bước chân thật lòng', 7, 200, TO_DATE('2025-10-01', 'YYYY-MM-DD'), N'Bước chân thật lòng, đặt niềm tin vào tương lai.', 'buocchan-thatlong.mp3');

INSERT INTO songs (song_id, song_name, artist_id, duration, released_date, lyrics, mp3_path)
VALUES(45, N'Vượt qua khó khăn', 8, 230, TO_DATE('2025-11-01', 'YYYY-MM-DD'), N'Vượt qua khó khăn, trưởng thành và mạnh mẽ hơn.', 'vuotqua-khokhan.mp3');

INSERT INTO songs (song_id, song_name, artist_id, duration, released_date, lyrics, mp3_path)
VALUES(46, N'Vùng trời bình yên', 9, 190, TO_DATE('2025-12-01', 'YYYY-MM-DD'), N'Vùng trời bình yên, nơi ta tìm thấy sự an lành.', 'vungtroi-binhyen.mp3');

INSERT INTO songs (song_id, song_name, artist_id, duration, released_date, lyrics, mp3_path)
VALUES(47, N'Điệp khúc tình yêu', 10, 220, TO_DATE('2026-01-01', 'YYYY-MM-DD'), N'Điệp khúc tình yêu, hòa quyện giữa hai trái tim.', 'diepkhuc-tinhyeu.mp3');

INSERT INTO songs (song_id, song_name, artist_id, duration, released_date, lyrics, mp3_path)
VALUES(48, N'Khát vọng bay cao', 1, 180, TO_DATE('2026-02-01', 'YYYY-MM-DD'), N'Khát vọng bay cao, tiến tới những giấc mơ xa.', 'khatvong-baycao.mp3');

INSERT INTO songs (song_id, song_name, artist_id, duration, released_date, lyrics, mp3_path)
VALUES(49, N'Nụ cười hạnh phúc', 2, 210, TO_DATE('2026-03-01', 'YYYY-MM-DD'), N'Nụ cười hạnh phúc, tươi sáng như ánh mặt trời.', 'nucuoi-hanhphuc.mp3');

INSERT INTO songs (song_id, song_name, artist_id, duration, released_date, lyrics, mp3_path)
VALUES(50, N'Trở lại tuổi thơ', 3, 240, TO_DATE('2026-04-01', 'YYYY-MM-DD'), N'Trở lại tuổi thơ, nhớ lại những kỷ niệm ngọt ngào.', 'trolaituoitho.mp3');

INSERT INTO songs (song_id, song_name, artist_id, duration, released_date, lyrics, mp3_path)
VALUES(51, N'Gửi tặng yêu thương', 4, 190, TO_DATE('2026-05-01', 'YYYY-MM-DD'), N'Gửi tặng yêu thương, từ trái tim chân thành nhất.', 'guitang-yeuthuong.mp3');

INSERT INTO songs (song_id, song_name, artist_id, duration, released_date, lyrics, mp3_path)
VALUES(52, N'Mãi yêu em', 5, 220, TO_DATE('2026-06-01', 'YYYY-MM-DD'), N'Mãi yêu em, dù thời gian trôi qua chẳng thay đổi.', 'maiyeu-em.mp3');

INSERT INTO songs (song_id, song_name, artist_id, duration, released_date, lyrics, mp3_path)
VALUES(53, N'Điều kỳ diệu của tình yêu', 6, 250, TO_DATE('2026-07-01', 'YYYY-MM-DD'), N'Điều kỳ diệu của tình yêu, biến những điều bình thường thành đặc biệt.', 'dieukydieu-tinhyeu.mp3');

INSERT INTO songs (song_id, song_name, artist_id, duration, released_date, lyrics, mp3_path)
VALUES(54, N'Bước chân tình yêu', 7, 200, TO_DATE('2026-08-01', 'YYYY-MM-DD'), N'Bước chân tình yêu, dẫn đến hạnh phúc vô tận.', 'buocchan-tinhyeu.mp3');

INSERT INTO songs (song_id, song_name, artist_id, duration, released_date, lyrics, mp3_path)
VALUES(55, N'Ngọt ngào cuộc sống', 8, 230, TO_DATE('2026-09-01', 'YYYY-MM-DD'), N'Ngọt ngào cuộc sống, là những khoảnh khắc đáng nhớ.', 'ngotngao-cuocsong.mp3');

INSERT INTO songs (song_id, song_name, artist_id, duration, released_date, lyrics, mp3_path)
VALUES(56, N'Trời cao và biển lớn', 9, 180, TO_DATE('2026-10-01', 'YYYY-MM-DD'), N'Trời cao và biển lớn, mở rộng tầm mắt của con người.', 'troicao-bienlon.mp3');

INSERT INTO songs (song_id, song_name, artist_id, duration, released_date, lyrics, mp3_path)
VALUES(57, N'Đắm say trong tình yêu', 10, 210, TO_DATE('2026-11-01', 'YYYY-MM-DD'), N'Đắm say trong tình yêu, là điểm dừng cuối cùng.', 'damsay-tinhyeu.mp3');

INSERT INTO songs (song_id, song_name, artist_id, duration, released_date, lyrics, mp3_path)
VALUES(58, N'Gửi về tương lai', 1, 240, TO_DATE('2026-12-01', 'YYYY-MM-DD'), N'Gửi về tương lai, hy vọng và khát vọng mãi mãi.', 'guive-tuonglai.mp3');

INSERT INTO songs (song_id, song_name, artist_id, duration, released_date, lyrics, mp3_path)
VALUES(59, N'Nơi bình yên tìm thấy', 2, 190, TO_DATE('2027-01-01', 'YYYY-MM-DD'), N'Nơi bình yên tìm thấy, trong trái tim và tâm hồn.', 'noibinhyen-timthay.mp3');

INSERT INTO songs (song_id, song_name, artist_id, duration, released_date, lyrics, mp3_path)
VALUES(60, N'Chạm đến giấc mơ', 3, 220, TO_DATE('2027-02-01', 'YYYY-MM-DD'), N'Chạm đến giấc mơ, biến nó thành hiện thực đẹp đẽ.', 'chamden-giacmo.mp3');

INSERT INTO songs (song_id, song_name, artist_id, duration, released_date, lyrics, mp3_path)
VALUES(61, N'Điều tuyệt vời nhất', 4, 250, TO_DATE('2027-03-01', 'YYYY-MM-DD'), N'Điều tuyệt vời nhất là được yêu và yêu người khác.', 'dieutuyetvoi-nhat.mp3');

INSERT INTO songs (song_id, song_name, artist_id, duration, released_date, lyrics, mp3_path)
VALUES(62, N'Yêu thương mãi mãi', 5, 200, TO_DATE('2027-04-01', 'YYYY-MM-DD'), N'Yêu thương mãi mãi, vượt qua mọi thử thách và khó khăn.', 'yeuthuong-maimai.mp3');

INSERT INTO songs (song_id, song_name, artist_id, duration, released_date, lyrics, mp3_path)
VALUES(63, N'Điểm tựa tâm hồn', 6, 230, TO_DATE('2027-05-01', 'YYYY-MM-DD'), N'Điểm tựa tâm hồn, nơi tìm được sự an ủi và bình yên.', 'diemtua-tamhon.mp3');

INSERT INTO songs (song_id, song_name, artist_id, duration, released_date, lyrics, mp3_path)
VALUES(64, N'Đi vào tim em', 7, 180, TO_DATE('2027-06-01', 'YYYY-MM-DD'), N'Đi vào tim em, trở thành một phần quan trọng trong cuộc sống.', 'diavao-timem.mp3');

INSERT INTO songs (song_id, song_name, artist_id, duration, released_date, lyrics, mp3_path)
VALUES(65, N'Ánh sáng hy vọng', 8, 210, TO_DATE('2027-07-01', 'YYYY-MM-DD'), N'Ánh sáng hy vọng, luôn chiếu sáng trên con đường đi.', 'anhsang-hyvong.mp3');

INSERT INTO songs (song_id, song_name, artist_id, duration, released_date, lyrics, mp3_path)
VALUES(66, N'Tình yêu bất tận', 9, 240, TO_DATE('2027-08-01', 'YYYY-MM-DD'), N'Tình yêu bất tận, không có giới hạn và điểm dừng.', 'tinhyeu-battan.mp3');

INSERT INTO songs (song_id, song_name, artist_id, duration, released_date, lyrics, mp3_path)
VALUES(67, N'Chạm vào trái tim', 10, 190, TO_DATE('2027-09-01', 'YYYY-MM-DD'), N'Chạm vào trái tim, hiểu được cảm xúc đằm thắm nhất.', 'chamvao-traithim.mp3');

INSERT INTO songs (song_id, song_name, artist_id, duration, released_date, lyrics, mp3_path)
VALUES(68, N'Ngọt ngào kỷ niệm', 1, 220, TO_DATE('2027-10-01', 'YYYY-MM-DD'), N'Ngọt ngào kỷ niệm, những khoảnh khắc đáng nhớ trong quá khứ.', 'ngotngao-kinhniem.mp3');

INSERT INTO songs (song_id, song_name, artist_id, duration, released_date, lyrics, mp3_path)
VALUES(69, N'Hãy tin vào tình yêu', 2, 250, TO_DATE('2027-11-01', 'YYYY-MM-DD'), N'Hãy tin vào tình yêu, nó có thể thay đổi cuộc sống.', 'haytin-tinhyeu.mp3');

INSERT INTO songs (song_id, song_name, artist_id, duration, released_date, lyrics, mp3_path)
VALUES(70, N'Cuộc sống đáng sống', 3, 200, TO_DATE('2027-12-01', 'YYYY-MM-DD'), N'Cuộc sống đáng sống, vì những giá trị và ý nghĩa của nó.', 'cuocsong-dangsong.mp3');

INSERT INTO songs (song_id, song_name, artist_id, duration, released_date, lyrics, mp3_path)
VALUES(71, N'Gửi trọn tâm tư', 4, 230, TO_DATE('2028-01-01', 'YYYY-MM-DD'), N'Gửi trọn tâm tư, những suy nghĩ và cảm xúc sâu thẳm.', 'guitron-tamtu.mp3');

INSERT INTO songs (song_id, song_name, artist_id, duration, released_date, lyrics, mp3_path)
VALUES(72, N'Đường đến thành công', 5, 180, TO_DATE('2028-02-01', 'YYYY-MM-DD'), N'Đường đến thành công, cần sự nỗ lực và kiên nhẫn.', 'duongden-thanhcong.mp3');

INSERT INTO songs (song_id, song_name, artist_id, duration, released_date, lyrics, mp3_path)
VALUES(73, N'Điệp khúc tuổi trẻ', 6, 210, TO_DATE('2028-03-01', 'YYYY-MM-DD'), N'Điệp khúc tuổi trẻ, hồi ức về những năm tháng đẹp nhất.', 'diepkhuc-tuoitre.mp3');

INSERT INTO songs (song_id, song_name, artist_id, duration, released_date, lyrics, mp3_path)
VALUES(74, N'Melody of Love', 7, 240, TO_DATE('2028-04-01', 'YYYY-MM-DD'), N'Melody of Love, the symphony that touches the heart.', 'melodyoflove.mp3');

INSERT INTO songs (song_id, song_name, artist_id, duration, released_date, lyrics, mp3_path)
VALUES(75, N'Vùng đất hạnh phúc', 8, 190, TO_DATE('2028-05-01', 'YYYY-MM-DD'), N'Vùng đất hạnh phúc, nơi tình yêu và niềm vui tràn đầy.', 'vungdat-hanhphuc.mp3');

INSERT INTO songs (song_id, song_name, artist_id, duration, released_date, lyrics, mp3_path)
VALUES(76, N'Bước chân theo đam mê', 9, 220, TO_DATE('2028-06-01', 'YYYY-MM-DD'), N'Bước chân theo đam mê, khám phá những giới hạn mới.', 'buocchan-dammê.mp3');

INSERT INTO songs (song_id, song_name, artist_id, duration, released_date, lyrics, mp3_path)
VALUES(77, N'Thắp sáng đam mê', 10, 250, TO_DATE('2028-07-01', 'YYYY-MM-DD'), N'Thắp sáng đam mê, biến giấc mơ thành hiện thực.', 'thap-sang-damme.mp3');

INSERT INTO songs (song_id, song_name, artist_id, duration, released_date, lyrics, mp3_path)
VALUES(78, N'Ngọt ngào mùa hạ', 1, 200, TO_DATE('2028-08-01', 'YYYY-MM-DD'), N'Ngọt ngào mùa hạ, hòa quyện trong cơn gió mát lành.', 'ngotngao-muaha.mp3');

INSERT INTO songs (song_id, song_name, artist_id, duration, released_date, lyrics, mp3_path)
VALUES(79, N'Hương vị tuổi trẻ', 2, 230, TO_DATE('2028-09-01', 'YYYY-MM-DD'), N'Hương vị tuổi trẻ, những kỷ niệm ngọt ngào của thanh xuân.', 'huongvi-tuoitre.mp3');

INSERT INTO songs (song_id, song_name, artist_id, duration, released_date, lyrics, mp3_path)
VALUES(80, N'Gió mùa thu', 3, 180, TO_DATE('2028-10-01', 'YYYY-MM-DD'), N'Gió mùa thu, mang theo những lá rụng và tình yêu sâu đậm.', 'giomuathu.mp3');

INSERT INTO songs (song_id, song_name, artist_id, duration, released_date, lyrics, mp3_path)
VALUES(81, N'Hành trình khám phá', 4, 210, TO_DATE('2028-11-01', 'YYYY-MM-DD'), N'Hành trình khám phá, tìm hiểu về thế giới xung quanh.', 'hanhtrinh-khampha.mp3');

INSERT INTO songs (song_id, song_name, artist_id, duration, released_date, lyrics, mp3_path)
VALUES(82, N'Ánh sáng bình minh', 5, 240, TO_DATE('2028-12-01', 'YYYY-MM-DD'), N'Ánh sáng bình minh, mở ra một ngày mới tràn đầy hy vọng.', 'anhsang-binhminh.mp3');

INSERT INTO songs (song_id, song_name, artist_id, duration, released_date, lyrics, mp3_path)
VALUES(83, N'Chạm vào ước mơ', 6, 190, TO_DATE('2029-01-01', 'YYYY-MM-DD'), N'Chạm vào ước mơ, biến nó thành hiện thực đẹp đẽ.', 'chamvao-uocmo.mp3');

INSERT INTO songs (song_id, song_name, artist_id, duration, released_date, lyrics, mp3_path)
VALUES(84, N'Gió cuốn đi', 7, 220, TO_DATE('2029-02-01', 'YYYY-MM-DD'), N'Gió cuốn đi, mang theo những hy vọng và niềm tin.', 'giocuondi.mp3');

INSERT INTO songs (song_id, song_name, artist_id, duration, released_date, lyrics, mp3_path)
VALUES(85, N'Điểm hẹn định mệnh', 8, 250, TO_DATE('2029-03-01', 'YYYY-MM-DD'), N'Điểm hẹn định mệnh, nơi gặp gỡ và tìm thấy nhau.', 'diemhen-dinhmenh.mp3');

INSERT INTO songs (song_id, song_name, artist_id, duration, released_date, lyrics, mp3_path)
VALUES(86, N'Bước chân tình yêu', 9, 200, TO_DATE('2029-04-01', 'YYYY-MM-DD'), N'Bước chân tình yêu, dẫn đến hạnh phúc vô tận.', 'buocchan-tinhyeu.mp3');

INSERT INTO songs (song_id, song_name, artist_id, duration, released_date, lyrics, mp3_path)
VALUES(87, N'Ngọt ngào cuộc sống', 10, 230, TO_DATE('2029-05-01', 'YYYY-MM-DD'), N'Ngọt ngào cuộc sống, là những khoảnh khắc đáng nhớ.', 'ngotngao-cuocsong.mp3');

INSERT INTO songs (song_id, song_name, artist_id, duration, released_date, lyrics, mp3_path)
VALUES(88, N'Trời cao và biển lớn', 1, 180, TO_DATE('2029-06-01', 'YYYY-MM-DD'), N'Trời cao và biển lớn, mở rộng tầm mắt của con người.', 'troicao-bienlon.mp3');

INSERT INTO songs (song_id, song_name, artist_id, duration, released_date, lyrics, mp3_path)
VALUES(89, N'Đắm say trong tình yêu', 2, 210, TO_DATE('2029-07-01', 'YYYY-MM-DD'), N'Đắm say trong tình yêu, là điểm dừng cuối cùng.', 'damsay-tinhyeu.mp3');

INSERT INTO songs (song_id, song_name, artist_id, duration, released_date, lyrics, mp3_path)
VALUES(90, N'Gửi về tương lai', 3, 240, TO_DATE('2029-08-01', 'YYYY-MM-DD'), N'Gửi về tương lai, hy vọng và khát vọng mãi mãi.', 'guive-tuonglai.mp3');

INSERT INTO songs (song_id, song_name, artist_id, duration, released_date, lyrics, mp3_path)
VALUES(91, N'Nơi bình yên tìm thấy', 4, 190, TO_DATE('2029-09-01', 'YYYY-MM-DD'), N'Nơi bình yên tìm thấy, trong trái tim và tâm hồn.', 'noibinhyen-timthay.mp3');

INSERT INTO songs (song_id, song_name, artist_id, duration, released_date, lyrics, mp3_path)
VALUES(92, N'Chạm đến giấc mơ', 5, 220, TO_DATE('2029-10-01', 'YYYY-MM-DD'), N'Chạm đến giấc mơ, biến nó thành hiện thực đẹp đẽ.', 'chamden-giacmo.mp3');

INSERT INTO songs (song_id, song_name, artist_id, duration, released_date, lyrics, mp3_path)
VALUES(93, N'Điều tuyệt vời nhất', 6, 250, TO_DATE('2029-11-01', 'YYYY-MM-DD'), N'Điều tuyệt vời nhất là được yêu và yêu người khác.', 'dieutuyetvoi-nhat.mp3');

/*
INSERT INTO songs (song_id, song_name, artist_id, duration, released_date, lyrics, mp3_path)
VALUES(95, N'Bài hát của tác giả chưa tồn tại', 1000, 250, TO_DATE('2029-11-01', 'YYYY-MM-DD'), N'Lơif bai hat ', 'dieutuyetvoaaaai-nhat.mp3');
*/

