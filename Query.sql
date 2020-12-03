Drop table if exists netflix_revenue;
Drop table if exists netflix_subscriber;
Drop table if exists netflix_original;

-- Create tables for raw data to be loaded into

CREATE TABLE netflix_original(
premiere Date PRIMARY KEY,
genre TEXT,
title TEXT
);

CREATE TABLE netflix_subscriber(
years DATE PRIMARY KEY,
area TEXT,
subscriber INT
);

CREATE TABLE netflix_revenue(
years DATE PRIMARY KEY,
area TEXT,
revenue INT
);


-- Joins tables
SELECT netflix_original.premiere, netflix_original.genre, netflix_original.title, netflix_subscriber.subscriber
FROM netflix_original, netflix_subscriber where netflix_original.premiere=netflix_subscriber.date

