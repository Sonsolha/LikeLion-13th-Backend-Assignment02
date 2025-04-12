USE LikeLions;

-- 저자 테이블 (Author)
CREATE TABLE Author (
    author_id INT PRIMARY KEY,        -- 저자 ID (중복 없는 고유 속성이기에 기본 키)
    name VARCHAR(100) NOT NULL,       -- 저자 이름 (이름은 반드시 입력해야 하므로 NOT NULL 사용)
    nationality VARCHAR(50)           -- 저자 국적
);

-- 책 테이블 (Book)
CREATE TABLE Book (
    book_id INT PRIMARY KEY,          -- 책 ID (중복 없는 고유 속성이기에 기본 키)
    title VARCHAR(200) NOT NULL,      -- 책 제목 (제목은 반드시 입력해야 하므로 NOT NULL 사용)
    publish_year INT,                 -- 출판 연도
    author_id INT,                    -- 저자 ID (외래 키)
    FOREIGN KEY (author_id) REFERENCES Author(author_id)
);

-- join
SELECT *
FROM Book
JOIN Author
ON Book.author_id = Author.author_id;

INSERT INTO Author (author_id, name, nationality)
VALUES
(1, '도스토예프스키', '러시아'),
(2, '무라카미하루키', '일본'),
(3, '이상', '한국');

INSERT INTO Book (book_id, title, publish_year, author_id)
VALUES
(101, '죄와벌', 1867, 1),
(102, '노르웨이의 숲', 1987, 2),
(103, '날개', 1936, 3);