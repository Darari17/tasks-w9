CREATE TYPE "type_role" AS ENUM (
  'admin',
  'user'
);

CREATE TABLE "users" (
  "id" int GENERATED ALWAYS AS IDENTITY PRIMARY KEY,
  "email" varchar(100) UNIQUE NOT NULL,
  "password" text NOT NULL,
  "role" type_role NOT NULL,
  "created_at" timestamp,
  "updated_at" timestamp
);

CREATE TABLE "profile" (
  "user_id" int,
  "firstname" varchar(255),
  "lastname" varchar(255),
  "phone_number" varchar(20)
);

CREATE TABLE "movies" (
  "id" int GENERATED ALWAYS AS IDENTITY PRIMARY KEY,
  "backdrop_path" varchar(255),
  "overview" text,
  "popularity" int,
  "poster_path" varchar(255),
  "release_date" date,
  "duration" int,
  "title" varchar(255),
  "director_name" varchar(255),
  "created_at" timestamp,
  "updated_at" timestamp
);

CREATE TABLE "genres" (
  "id" int GENERATED ALWAYS AS IDENTITY PRIMARY KEY,
  "name" varchar(50)
);

CREATE TABLE "movies_genres" (
  "id" int GENERATED ALWAYS AS IDENTITY PRIMARY KEY,
  "movies_id" int,
  "genres_id" int
);

CREATE TABLE "casts" (
  "id" int GENERATED ALWAYS AS IDENTITY PRIMARY KEY,
  "name" varchar(50)
);

CREATE TABLE "movies_casts" (
  "id" int GENERATED ALWAYS AS IDENTITY PRIMARY KEY,
  "movies_id" int,
  "casts_id" int
);

CREATE TABLE "cinemas" (
  "id" int GENERATED ALWAYS AS IDENTITY PRIMARY KEY,
  "name" varchar(50) NOT NULL
);

CREATE TABLE "times" (
  "id" int GENERATED ALWAYS AS IDENTITY PRIMARY KEY,
  "time" varchar(50) NOT NULL
);

CREATE TABLE "locations" (
  "id" int GENERATED ALWAYS AS IDENTITY PRIMARY KEY,
  "location" varchar(50) NOT NULL
);

CREATE TABLE "payments_method" (
  "id" int GENERATED ALWAYS AS IDENTITY PRIMARY KEY,
  "name" varchar(50) NOT NULL
);

CREATE TABLE "seats" (
  "id" int GENERATED ALWAYS AS IDENTITY PRIMARY KEY,
  "seat_code" varchar(2) NOT NULL
);

CREATE TABLE "schedules" (
  "id" int GENERATED ALWAYS AS IDENTITY PRIMARY KEY,
  "movies_id" int,
  "cinemas_id" int,
  "times_id" int,
  "locations_id" int,
  "date" date
);

CREATE TABLE "orders" (
  "id" int GENERATED ALWAYS AS IDENTITY PRIMARY KEY,
  "qr_code" text NOT NULL,
  "users_id" int,
  "schedules_id" int,
  "payments_id" int,
  "fullname" varchar(255) NOT NULL,
  "email" varchar(100) NOT NULL,
  "phone_number" varchar(20) NOT NULL,
  "created_at" timestamp,
  "updated_at" timestamp
);

CREATE TABLE "orders_seats" (
  "orders_id" int,
  "seats_id" int,
  PRIMARY KEY ("orders_id", "seats_id")
);

ALTER TABLE "profile" ADD FOREIGN KEY ("user_id") REFERENCES "users" ("id");

ALTER TABLE "movies_genres" ADD FOREIGN KEY ("movies_id") REFERENCES "movies" ("id");

ALTER TABLE "movies_genres" ADD FOREIGN KEY ("genres_id") REFERENCES "genres" ("id");

ALTER TABLE "movies_casts" ADD FOREIGN KEY ("movies_id") REFERENCES "movies" ("id");

ALTER TABLE "movies_casts" ADD FOREIGN KEY ("casts_id") REFERENCES "casts" ("id");

ALTER TABLE "schedules" ADD FOREIGN KEY ("movies_id") REFERENCES "movies" ("id");

ALTER TABLE "schedules" ADD FOREIGN KEY ("cinemas_id") REFERENCES "cinemas" ("id");

ALTER TABLE "schedules" ADD FOREIGN KEY ("times_id") REFERENCES "times" ("id");

ALTER TABLE "schedules" ADD FOREIGN KEY ("locations_id") REFERENCES "locations" ("id");

ALTER TABLE "orders" ADD FOREIGN KEY ("users_id") REFERENCES "users" ("id");

ALTER TABLE "orders" ADD FOREIGN KEY ("schedules_id") REFERENCES "schedules" ("id");

ALTER TABLE "orders" ADD FOREIGN KEY ("payments_id") REFERENCES "payments_method" ("id");

ALTER TABLE "orders_seats" ADD FOREIGN KEY ("orders_id") REFERENCES "orders" ("id");

ALTER TABLE "orders_seats" ADD FOREIGN KEY ("seats_id") REFERENCES "seats" ("id");