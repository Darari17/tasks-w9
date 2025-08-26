CREATE TABLE "Books" (
  "id" serial PRIMARY KEY,
  "name" varchar(100) NOT NULL,
  "author" varchar(100) NOT NULL,
  "bookshelve_id" int NOT NULL
);

CREATE TABLE "Categories" (
  "id" serial PRIMARY KEY,
  "name" varchar(100) NOT NULL
);

CREATE TABLE "Bookshelves" (
  "id" serial PRIMARY KEY,
  "code" varchar(50) NOT NULL,
  "category_id" int NOT NULL
);

CREATE TABLE "Members" (
  "id" serial PRIMARY KEY,
  "name" varchar(100) NOT NULL
);

CREATE TABLE "Librarians" (
  "id" serial PRIMARY KEY,
  "name" varchar(100) NOT NULL
);

CREATE TABLE "Borrowing" (
  "id" serial PRIMARY KEY,
  "book_id" int NOT NULL,
  "member_id" int NOT NULL,
  "librarian_id" int NOT NULL,
  "created_at" timestamp
);

ALTER TABLE "Books" ADD FOREIGN KEY ("bookshelve_id") REFERENCES "Bookshelves" ("id");

ALTER TABLE "Bookshelves" ADD FOREIGN KEY ("category_id") REFERENCES "Categories" ("id");

ALTER TABLE "Borrowing" ADD FOREIGN KEY ("book_id") REFERENCES "Books" ("id");

ALTER TABLE "Borrowing" ADD FOREIGN KEY ("member_id") REFERENCES "Members" ("id");

ALTER TABLE "Borrowing" ADD FOREIGN KEY ("librarian_id") REFERENCES "Librarians" ("id");

INSERT INTO "Categories" ("name") VALUES 
('Fantasy'),
('Adventure'),
('Sci-Fi'),
('Mystery'),
('Horror'),
('Romance'),
('History'),
('Novel'),
('Kids'),
('Dystopian');

INSERT INTO "Bookshelves" ("code", "category_id") VALUES
('001', 1),
('002', 2),
('003', 3),
('004', 4),
('005', 5),
('006', 6),
('007', 7),
('008', 8),
('009', 9),
('010', 10);

INSERT INTO "Books" ("name", "author", "bookshelve_id") VALUES 
('Laskar Pelangi', 'Andrea Hirata', 1),
('Bumi Manusia', 'Pramoedya Ananta Toer', 2),
('Gadis Kretek', 'Ratih Kumala', 3),
('Aroma Karsa', 'Dee Lestari', 4),
('Wingit', 'Sara Wijayanto', 5),
('Tenggelamnya Kapal Van Der Wijck', 'Buya Hamka', 6),
('Negeri 5 Menara', 'Ahmad Fuadi', 7),
('The Alchemist', 'Paulo Coelho', 8),
('Selamat Tinggal', 'Tere Liye', 9),
('Laut Bercerita dan Pulang', 'Leila S. Chudori', 10);

INSERT INTO "Members" ("name") VALUES 
('C'),
('Sidik'),
('Yoseph'),
('Farid'),
('Habib'),
('Opet'),
('Radif'),
('Inkam'),
('Titus'),
('Slamet'),
('Anggi'),
('Om Feb'),
('Lala');

INSERT INTO "Librarians" ("name") VALUES 
('Mas Fakhri'),
('Mas Alwi'),
('Kak Winda'),
('Mas Joni'),
('Mas Budi'),
('Kak Ayu'),
('kak Bella'),
('Kak Cantika'),
('Mas David'),
('Mas Dodi'),
('Mas Doni');

INSERT INTO "Borrowing" ("book_id", "member_id", "librarian_id", "created_at") VALUES 
(1, 10, 2, NOW()),
(2, 9, 4, NOW()),
(3, 8, 6, NOW()),
(4, 7, 8, NOW()),
(5, 6, 10, NOW()),
(6, 5, 1, NOW()),
(7, 4, 3, NOW()),
(8, 3, 5, NOW()),
(9, 2, 7, NOW()),
(10, 1, 9, NOW());



SELECT "id", "name", "author", "bookshelve_id" from "Books";

SELECT "id", "name" from "Categories";

SELECT "id", "code", "category_id" FROM "Bookshelves";

SELECT "id", "name" FROM "Members";

SELECT "id", "name" FROM "Librarians";

SELECT "id", "book_id", "member_id", "librarian_id", "created_at" FROM "Borrowing";

