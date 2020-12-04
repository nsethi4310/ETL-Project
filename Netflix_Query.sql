Drop table if exists netflix_revenue;
Drop table if exists netflix_subscriber;
Drop table if exists netflix_original;
-- Create tables for raw data to be loaded into
CREATE TABLE netflix_original(
"Years" text ,
"Genre" TEXT,
"Title" TEXT
);
CREATE TABLE netflix_subscriber(
"Years" text ,
"Area" TEXT,
"Subscribers" INT
);
CREATE TABLE netflix_revenue(
"Years" text ,
"Area" TEXT,
"Revenue" BIGINT
);
SELECT * From netflix_subscriber
SELECT * From netflix_revenue
SELECT * From netflix_original

CREATE VIEW Sub_Qtr AS
SELECT netflix_original."Years", netflix_original."Genre", netflix_original."Title", netflix_subscriber."Subscribers"
FROM netflix_original, netflix_subscriber where netflix_original."Years"=netflix_subscriber."Years"