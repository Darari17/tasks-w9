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
('Novel'),
('Science'),
('History'),
('Fantasy'),
('Horror');

INSERT INTO "Bookshelves" ("code", "category_id") VALUES
('001', 1),
('002', 2),
('003', 3),
('004', 4),
('005', 5);

INSERT INTO "Books" ("name", "author", "bookshelve_id") VALUES 
('Laskar Pelangi', 'Andrea Hirata', 1),
('Bumi Manusia', 'Pramoedya Ananta Toer', 1),
('Gadis Kretek', 'Ratih Kumala', 1),
('Aroma Karsa', 'Dee Lestari', 4),
('Laut Bercerita dan Pulang', 'Leila S. Chudori', 2),
('Tenggelamnya Kapal Van Der Wijck', 'Buya Hamka', 2),
('Negeri 5 Menara', 'Ahmad Fuadi', 1),
('The Alchemist', 'Paulo Coelho', 3),
('Selamat Tinggal', 'Tere Liye', 3),
('Wingit', 'Sara Wijayanto', 5);

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
('Mas Alwi');

INSERT INTO "Borrowing" ("book_id", "member_id", "librarian_id", "created_at") VALUES 
(1, 1, 1, NOW()),
(2, 2, 2, NOW()),
(3, 3, 1, NOW());