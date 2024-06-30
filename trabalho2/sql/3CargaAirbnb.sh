cp data/*.csv /tmp
psql -U postgres -c "\copy Reviews from /tmp/reviews.csv delimiter ',' CSV HEADER;"
psql -U postgres -c "\copy Listings from /tmp/listings.csv delimiter ',' CSV HEADER;"
psql -U postgres -c "\copy Calendar from /tmp/calendar.csv delimiter ',' CSV HEADER;"