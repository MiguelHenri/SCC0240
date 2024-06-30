DROP TABLE IF EXISTS Reviews CASCADE;
CREATE TABLE Reviews(
    listing_id BIGINT,
    date_ DATE
);

-- Load data into Reviews
COPY Reviews(listing_id, id, date, reviewer_id, reviewer_name, comments)
FROM 'data/reviews.csv' DELIMITER ',' CSV HEADER;

DROP TABLE IF EXISTS Listings CASCADE;
CREATE TABLE Listings(
    ID BIGINT,
    name_ VARCHAR(200),
    host_id INT,
    host_name VARCHAR(60),
    neighbourhood_group VARCHAR(50), --x
    neighbourhood VARCHAR(50), --x
    latitude FLOAT, --x
    longitude FLOAT, --x
    room_type VARCHAR(50), --x
    price INT,
    minimum_nights INT,
    number_of_reviews INT, --x
    last_review DATE, --x
    reviews_per_month FLOAT, --x
    calculated_host_listings_count INT, --x
    availability_365 INT, --x
    number_of_reviews_ltm INT, --x
    license VARCHAR(50) --x
);

-- Load data into Listings
COPY Listings(id, name, neighbourhood, room_type, price, minimum_nights, maximum_nights, number_of_reviews, last_review, calculated_host_listings_count, availability_365)
FROM 'data/listings.csv' DELIMITER ',' CSV HEADER;

DROP TABLE IF EXISTS Calendar CASCADE;
CREATE TABLE Calendar(
    listing_id BIGINT,
    date_ DATE,
    available VARCHAR(3), --x
    price VARCHAR(30),
    adjusted_price VARCHAR(30),
    minimum_nights INT,
    maximum_nights INT
);

-- Load data into Calendar
COPY Calendar(listing_id, date, available, price)
FROM 'data/calendar.csv' DELIMITER ',' CSV HEADER;