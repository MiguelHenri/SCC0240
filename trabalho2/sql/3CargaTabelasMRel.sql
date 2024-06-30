-- atualizando listings para poder utilizar nome e id anfitriao como PK
UPDATE Listings 
SET name_ = CONCAT(
    SPLIT_PART(name_, '·', 1), 
    SPLIT_PART(name_, '·', 3),
    SPLIT_PART(name_, '·', 4), 
    SPLIT_PART(name_, '·', 5)
);

INSERT INTO Localizacoes (Bairro, Pais, Estado, Cidade) -- preenchendo localizacoes com bairros
SELECT DISTINCT neighbourhood, 'Brasil', 'RJ', 'Rio de Janeiro' -- base de dados do rio de janeiro, rj
FROM Listings;

-- obtendo a primeira ocorrência de cada combinação de name_ e host_id
WITH PropriedadesUnicas AS (
    SELECT 
        L.name_, 
        L.host_id, 
        L.price, 
        L.minimum_nights, 
        Loc.ID AS IDLocalizacao,
        ROW_NUMBER() OVER (PARTITION BY L.name_, L.host_id ORDER BY L.ID) AS RN
    FROM Listings AS L
    INNER JOIN Localizacoes AS Loc ON L.neighbourhood = Loc.Bairro
)
-- preenchendo as propriedades com base nos listings
-- insere apenas as entradas onde RN = 1, garantindo que cada combinação de name_ e host_id seja única
INSERT INTO Propriedades (Nome, IDAnfitriao, PrecoDiaria, MinNoites, IDLocalizacao)
SELECT 
    name_, host_id, price, minimum_nights, IDLocalizacao
FROM PropriedadesUnicas
WHERE RN = 1;

-- obtendo a primeira ocorrência de cada host_id
WITH UsuariosUnicos AS (
    SELECT 
        L.host_id, 
        L.host_name, 
        Loc.ID AS IDLocalizacao,
        ROW_NUMBER() OVER (PARTITION BY L.host_id ORDER BY L.host_name) AS RN
    FROM Listings AS L
    INNER JOIN Localizacoes AS Loc ON L.neighbourhood = Loc.Bairro
)
-- preenchendo os dados dos usuários com base nos listings
-- todo usuário é anfitrião e a localização é obtida com base no bairro
-- insere apenas as entradas onde RN = 1, garantindo que cada host_id seja único
INSERT INTO Usuarios (ID, Nome, EAnfitriao, IDLocalizacao)
SELECT 
    host_id, host_name, TRUE, IDLocalizacao
FROM UsuariosUnicos
WHERE RN = 1;

-- preenchendo as mensagens com os dados do reviews
INSERT INTO Mensagens (IDPropriedade, DataCriacao)
SELECT P.ID, R.date
FROM Reviews R
JOIN Listings L ON L.ID = R.listing_id -- é necessário obter o listing id
JOIN Propriedades P ON P.Nome = L.name_ AND P.IDAnfitriao = L.host_id;

-- preenchendo datas disponíveis com dados do calendar
WITH DatasUnicas AS (
    SELECT DISTINCT
        P.ID, 
        C.date_ AS Data,
        ROW_NUMBER() OVER (PARTITION BY C.listing_id, C.date_ ORDER BY C.listing_id) AS RN
    FROM Calendar AS C
    JOIN Listings L ON L.ID = C.listing_id -- é necessário obter o listing id
    JOIN Propriedades P ON P.Nome = L.name_ AND P.IDAnfitriao = L.host_id
    WHERE C.available = 't' 
)
INSERT INTO DatasDisponiveis (IDPropriedade, Data)
SELECT
    ID, Data
FROM DatasUnicas
WHERE RN = 1;