INSERT INTO Mensagens (IDPropriedade, DataCriacao) --preencher as tabelas com os dados do reviews
SELECT listing_id, date
FROM Reviews;

INSERT INTO DatasDisponiveis (IDPropriedade, Data)
SELECT listing_id, date_
FROM Calendar
WHERE available = 't';

INSERT INTO Localizacoes (Bairro, Pais, Estado, Cidade) -- preenchendo localizacoes com bairros
SELECT DISTINCT neighbourhood, 'Brasil', 'RJ', 'Rio de Janeiro' -- base de dados do rio de janeiro, rj
FROM Listings;

-- preenchendo as propriedades com base nos listings
INSERT INTO Propriedades (ID, Nome, IDAnfitriao, PrecoDiaria, MinNoites, IDLocalizacao)
SELECT DISTINCT L.ID, L.name_, L.host_id, L.price, L.minimum_nights, Loc.ID
FROM Listings AS L
INNER JOIN Localizacoes AS Loc ON L.neighbourhood = Loc.Bairro; -- localizacao com base no bairro

-- preenchendo os dados dos usuários com base nos listings
-- todo usuário é anfitrião e a localização é obtida com base no bairro
INSERT INTO Usuarios (ID, Nome, EAnfitriao, IDLocalizacao)
SELECT DISTINCT L.host_id, L.host_name, TRUE, Loc.ID
FROM Listings AS L
INNER JOIN Localizacoes AS Loc ON L.neighbourhood = Loc.Bairro;