INSERT INTO Mensagens (IDPropriedade, DataCriacao) --preencher as tabelas com os dados do reviews
SELECT listing_id, date_
FROM Reviews;

INSERT INTO Locacao (IDPropriedade, DataReserva)
SELECT listing_id, date_
FROM Calendar
WHERE available = 't';

INSERT INTO Propriedades (ID, Nome, IDAnfitriao, PrecoDiaria, MinNoites) --preencher as tabelas com os dados do listings
SELECT ID, name_, host_id, price, minimum_nights --n sei colocar o nome do anfitriao
FROM Listings;

INSERT INTO Usuarios (ID, Nome, EAnfitriao)
SELECT host_id, host_name, TRUE
FROM Listings;