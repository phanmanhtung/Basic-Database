SET @OLD_UNIQUE_CHECKS=@@UNIQUE_CHECKS, UNIQUE_CHECKS=0;
SET @OLD_FOREIGN_KEY_CHECKS=@@FOREIGN_KEY_CHECKS, FOREIGN_KEY_CHECKS=0;

USE `bi8student`;

-- ----------------------------
-- Insert into Table 'student'
-- ----------------------------

INSERT INTO student VALUES('Duc Anh', 'Ta', 'anhtd.b8009@st.usth.edu.vn', 
	'123 Doi Can St', 'Ha Noi', '792-223-8901', "1999-2-22",
	'M', NOW(), NULL);
INSERT INTO student VALUES('Duy Anh', 'Nguyen', 'anhnd.b8012@st.usth.edu.vn', 
	'202 Nguyen Trai St', 'Ha Noi', '792-223-9810', "1999-1-24",
	'M', NOW(), NULL);
INSERT INTO student VALUES('Van Bach', 'Pham', 'bachpv.b8022@st.usth.edu.vn', 
	'9 Kham Thien St', 'Ha Noi', '792-223-6734', "1999-12-12",
	'M', NOW(), NULL);
INSERT INTO student VALUES('Minh Duc', 'Dang', 'ducdm.b8047@st.usth.edu.vn', 
	'14 Van Cao St', 'Ha Noi', '792-223-6178', "1999-5-24",
	'M', NOW(), NULL);
INSERT INTO student VALUES('Chu Hiep', 'Le Nhu', 'hieplnc.b8062@st.usth.edu.vn', 
	'120 Dao Tan St', 'Ha Noi', '792-223-2001', "1999-3-24",
	'M', NOW(), NULL);
INSERT INTO student VALUES('Tuan Hiep', 'Nguyen', 'hiepnt.b8063@st.usth.edu.vn', 
	'342 Truong Trinh  St', 'Ha Noi', '792-223-2001', "1999-2-1",
	'M', NOW(), NULL);
INSERT INTO student VALUES('Khanh Huyen', 'Vu', 'huyenvk.b8074@st.usth.edu.vn', 
	'255 Hoang Dao Thuy St', 'Ha Noi', '792-223-1890', "1999-1-2",
	'F', NOW(), NULL);
INSERT INTO student VALUES('Lien Huong', 'Doan', 'huongdl.b8078@st.usth.edu.vn', 
	'178 Xuan Thuy St', 'Ha Noi', '792-223-9678', "1999-11-27",
	'F', NOW(), NULL);
INSERT INTO student VALUES('Minh Ngoc', 'Do Thi', 'ngocdtm.b8129@st.usth.edu.vn', 
	'672 Kim Ma', 'Ha Noi', '792-223-1115', "1999-12-21",
	'F', NOW(), NULL);
INSERT INTO student VALUES('Trac Thanh', 'Nguyen', 'thanhnt.b8170@st.usth.edu.vn', 
	'281 Doi Can St', 'Ha Noi', '792-223-8902', "1999-12-27",
	'M', NOW(), NULL);

-- ----------------------------
-- Insert into Table 'class'
-- ----------------------------

INSERT INTO class VALUES
('English', NULL), ('Basic Database', NULL), ('Mobile Wireless', NULL),
('Biochemistry', NULL), ('French', NULL), ('Discrete Math', NULL),
('Calculus II', NULL), ('Algorithm and Data Structure', NULL), ('Signal and System', NULL),
('Economic', NULL), ('Electromagnetism', NULL), ('Calculus I', NULL),
('Basic Programming', NULL), ('Signal and System II', NULL);

-- ----------------------------
-- Insert into Table 'test'
-- ----------------------------

ALTER TABLE test ADD maxscore INT NOT NULL AFTER type; 

INSERT INTO test VALUES
('2019-6-10', 'midterm', 20, 1, NULL),
('2019-6-15', 'final', 20, 1, NULL),
('2019-6-15', 'midterm', 20, 3, NULL),
('2019-6-15', 'final', 20, 2, NULL),
('2019-6-20', 'midterm', 20, 4, NULL),
('2019-6-20', 'final', 20, 4, NULL);

-- ----------------------------
-- Insert into Table 'score'
-- ----------------------------

INSERT INTO score VALUES
	(1, 1, 15),
	(1, 2, 14),
	(1, 3, 18),
	(1, 4, 19),
	(1, 5, 5),
	(1, 6, 17),
	(2, 1, 5),
	(2, 2, 14),
	(2, 3, 16),
	(2, 4, 18),
	(2, 5, 14),
	(2, 6, 6),
	(3, 1, 14),
	(3, 2, 14),
	(3, 3, 16),
	(3, 4, 6),
	(3, 5, 13),
	(3, 6, 16),
	(4, 1, 15),
	(4, 2, 4),
	(4, 3, 17),
	(4, 4, 7),
	(4, 5, 15),
	(4, 6, 17),
	(5, 1, 14),
	(5, 2, 3),
	(5, 3, 6),
	(5, 4, 17),
	(5, 5, 13),
	(5, 6, 7),
	(6, 1, 13),
	(6, 2, 13),
	(6, 4, 16),
	(6, 5, 13),
	(6, 6, 16),
	(7, 1, 3),
	(7, 2, 13),
	(7, 3, 15),
	(7, 4, 17),
	(7, 5, 13),
	(8, 1, 14),
	(8, 3, 6),
	(8, 4, 13),
	(8, 5, 12),
	(8, 6, 14),
	(9, 1, 15),
	(9, 2, 13),
	(9, 3, 8),
	(9, 4, 17),
	(9, 5, 14),
	(9, 6, 17),
	(10, 1, 15),
	(10, 2, 3),
	(10, 3, 16),
	(10, 4, 7),
	(10, 5, 12),
	(10, 6, 12);

-- ----------------------------
-- Insert into Table 'absence'
-- ----------------------------

INSERT INTO absence VALUES
	(6, 2),
	(7, 2),
	(8, 3);

