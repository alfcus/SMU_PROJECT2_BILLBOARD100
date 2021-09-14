-- Exported from QuickDBD: https://www.quickdatabasediagrams.com/
-- NOTE! If you have used non-SQL datatypes in your design, you will have to change these here.

-- Billboard

CREATE TABLE "main" (
    "id" serial   NOT NULL,
    "rank" int   NOT NULL,
    "song" varchar(75)   NOT NULL,
    "artist_id" int   NOT NULL,
    "source_id" int   NOT NULL,
    "last_updated" datetime   NOT NULL,
    CONSTRAINT "pk_main" PRIMARY KEY (
        "id"
     )
);

CREATE TABLE "artist_table" (
    "artist_id" serial   NOT NULL,
    "artist" varchar(75)   NOT NULL,
    "last_updated" datetime   NOT NULL,
    CONSTRAINT "pk_artist_table" PRIMARY KEY (
        "artist_id"
     )
);

CREATE TABLE "souce_table" (
    "source_id" serial   NOT NULL,
    "website" varchar(50)   NOT NULL,
    "last_updated" datetime   NOT NULL,
    CONSTRAINT "pk_souce_table" PRIMARY KEY (
        "source_id"
     )
);

ALTER TABLE "main" ADD CONSTRAINT "fk_main_artist_id" FOREIGN KEY("artist_id")
REFERENCES "artist_table" ("artist_id");

ALTER TABLE "main" ADD CONSTRAINT "fk_main_source_id" FOREIGN KEY("source_id")
REFERENCES "souce_table" ("source_id");

