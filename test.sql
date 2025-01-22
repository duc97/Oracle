CREATE TABLE Course(
    Course_ID NUMBER CONSTRAINT pk_Course_ID PRIMARY KEY,
    Course_Name VARCHAR2(100),
    Course_Description VARCHAR2(500)
);

INSERT INTO Course(
    Course_ID,
    Course_Name,
    Course_Description
)
VALUES(
    1,
    'Mathematics for AI',
    'Mathematics for AI course'
);