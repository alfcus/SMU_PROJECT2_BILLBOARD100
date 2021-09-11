-- Exported from QuickDBD: https://www.quickdatabasediagrams.com/
-- Link to schema: https://app.quickdatabasediagrams.com/#/d/0HsdI1
-- NOTE! If you have used non-SQL datatypes in your design, you will have to change these here.


CREATE TABLE "main" (
    "id" serial   NOT NULL,
    "rank" int   NOT NULL,
    "song" varchar(40)   NOT NULL,
    "artist_id" int   NOT NULL,
    "label_id" int   NOT NULL,
    "source_id" int   NOT NULL,
    "last_updated" datetime   NOT NULL,
    CONSTRAINT "pk_main" PRIMARY KEY (
        "id"
     )
);

CREATE TABLE "artist_table" (
    "artist_id" serial   NOT NULL,
    "artist" varchar(40)   NOT NULL,
    "last_updated" datetime   NOT NULL,
    CONSTRAINT "pk_artist_table" PRIMARY KEY (
        "artist_id"
     )
);

CREATE TABLE "label_table" (
    "label_id" serial   NOT NULL,
    "label" varchar(40)   NOT NULL,
    "last_updated" datetime   NOT NULL,
    CONSTRAINT "pk_label_table" PRIMARY KEY (
        "label_id"
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

ALTER TABLE "main" ADD CONSTRAINT "fk_main_label_id" FOREIGN KEY("label_id")
REFERENCES "label_table" ("label_id");

ALTER TABLE "main" ADD CONSTRAINT "fk_main_source_id" FOREIGN KEY("source_id")
REFERENCES "souce_table" ("source_id");

