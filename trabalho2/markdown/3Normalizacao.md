# Normalização
Processos de normalização executados sobre as tabelas do Airbnb

## Atributos de Listings

Listings = {[id]{.underline}, name, host_id, host_name, neighbourhood_group, neighbourhood, latitude, longitude, room_type, price, minimum_nights, number_of_reviews, last_review, reviews_per_month, calculated_host_listings_count, availability_365, number_of_reviews_ltm, license}

**id** é chave candidata de listing, não há outras chaves em Listings

as dependências funcionais entre atributos que não são chaves:

- host_id &#8594; host_name, calculated_host_listings_counts

A partir dessas dependências, cria-se uma nova relação chamada Hosts e removem-se os atributos que dependentes em Listings

Hosts = {[host_id, host_name]{.underline}, calculated_host_listings_counts}


Além disso, há dependências funcionais no que diz respeito à propriedade em si, que é diferente do listing, a chave estrangeira da propriedade é o name + host_id:

{name, host_id} &#8594; neighbourhood_group, neighbourhood, latitude, longitude, room_type, calculated_host_listings_count, number_of_reviews_ltm, license


Para isso, cria-se uma nova relação:

Property = {[name, host_id]{.underline}, neighbourhood_group, neighbourhood,latitude,longitude,room_type, calculated_host_listings_count, number_of_reviews_ltm, number_of_reviews, license}

E por fim listings fica dessa forma:

Listings = {[id]{.underline},name, host_id, price,minimum_nights, availability_365}


## Atributos de Calendar
Calendar = {[listing_id, date]{.underline}, available, price, adjusted_price, minimum_nights, maximum_nights}

**listing_id** junto com **date** é chave primária e todos os outros atributos dependem diretamente da chave primária. Logo já a relação já está normalizada. Além disso, ainda que tanto Listings quanto Calendar possuem os atributos de **minimum_nights** e **maximum_nights**, os quais dependem das suas respectivas chaves e portanto não há necessidade de criar outra relação para separá-los.

## Atributos de Review
Review = {[listing_id, date]{.underline}}

Todos seus atributos fazem parte da chave primária, trivialmente normalizada.