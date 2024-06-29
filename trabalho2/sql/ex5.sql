DROP TABLE IF EXISTS Propriedades CASCADE;
CREATE TABLE Propriedades(
    ID BIGINT NOT NULL, 
    Nome VARCHAR(50) NOT NULL,
    Endereco VARCHAR(100) NOT NULL,
    IDLocalizacao INT NOT NULL,
    IDAnfitriao INT NOT NULL,
    NQuartos INT NOT NULL,
    NBanheiros INT NOT NULL,
    PrecoDiaria float NOT NULL,
    NMaxHospedes INT NOT NULL,
    MinNoites INT NOT NULL,
    MaxNoites INT NOT NULL,
    ValorLimpeza FLOAT,
    HoraCheckIn TIME,
    HoraCheckOut TIME,
    CasaInteira BOOLEAN
);


DROP TABLE IF EXISTS Localizacoes CASCADE; 
CREATE TABLE Localizacoes(
    ID INT NOT NULL,
    Pais VARCHAR(50) NOT NULL,
    Estado VARCHAR(50) NOT NULL,
    Cidade VARCHAR(50) NOT NULL,
    Bairro VARCHAR(50) NOT NULL
);

DROP TABLE IF EXISTS Usuarios CASCADE;
CREATE TABLE Usuarios(
    ID INT NOT NULL,
    Nome VARCHAR(50) NOT NULL,
    Email VARCHAR(50) NOT NULL,
    Sobrenome VARCHAR(50) NOT NULL,
    Nascimento DATE NOT NULL,
    Endereco VARCHAR(100) NOT NULL,
    Sexo VARCHAR(50) NOT NULL,
    Telefone VARCHAR(50) NOT NULL,
    Senha VARCHAR(50) NOT NULL,
    IDLocalizacao INT NOT NULL,
    EAnfritriao VARCHAR(50)
);

DROP TABLE IF EXISTS Mensagens CASCADE;
CREATE TABLE Mensagens(
    IDPropriedade BIGINT NOT NULL,
    DataCriacao VARCHAR (50) NOT NULL,
    IDRemetente INT NOT NULL,
    IDDestinatario INT NOT NULL,
    Texto VARCHAR(200) NOT NULL,
    ClassificacaoLocalizacao VARCHAR(50),
    ClassificacaoComunicacao VARCHAR(50),
    ClassificacaoValor VARCHAR(50),
    ClassificacaoLimpeza VARCHAR(50)
);

DROP TABLE IF EXISTS Locacao CASCADE;
CREATE TABLE Locacao(
    IDHospede INT NOT NULL,
    IDPropriedade BIGINT NOT NULL,
    DataReserva DATE NOT NULL,
    DataCheckIn DATE NOT NULL,
    DataCheckOut DATE NOT NULL,
    NHospedes INT NOT NULL,
    PrecoTotal FLOAT,
    Imposto FLOAT,
    PrecoImpostos FLOAT,
    CodigoPromocional VARCHAR(50),
    ValorDesconto FLOAT,
    Confirmada BOOLEAN NOT NULL
);


DROP TABLE IF EXISTS PontosInteresse CASCADE;
CREATE TABLE PontosInteresse(
    IDLocalizacao INT NOT NULL,
    NOME VARCHAR(50) NOT NULL
);


DROP TABLE IF EXISTS Fotos CASCADE;
CREATE TABLE Fotos(
    DataCriacao DATE,
    Foto BYTEA NOT NULL,
    IDRemetente INT,
    IDDestinatario INT
);

DROP TABLE IF EXISTS Quartos CASCADE;
CREATE TABLE Quartos(
    ID SERIAL NOT NULL,
    NSolteiro INT NOT NULL,
    NCasal INT NOT NULL,
    Individual BOOLEAN NOT NULL,
    IDPropriedade BIGINT NOT NULL
);

DROP TABLE IF EXISTS Comodidades CASCADE;
CREATE TABLE Comodidades(
    IDPropriedade BIGINT,
    Comodidade VARCHAR(50)
);

DROP TABLE IF EXISTS Contas CASCADE;
CREATE TABLE Contas(
    IDUsuario INT,
    Numero INT,
    Tipo VARCHAR(50),
    Roteamento VARCHAR(50)
);

DROP TABLE IF EXISTS DatasDisponiveis CASCADE;
CREATE TABLE DatasDisponiveis(
    IDPropriedade BIGINT,
    Data DATE
);

DROP TABLE IF EXISTS Regras CASCADE;
CREATE TABLE Regras(
    IDPropriedade BIGINT,
    Regra VARCHAR(200)
);

DROP TABLE IF EXISTS Reviews CASCADE;
CREATE TABLE Reviews(
    listing_id BIGINT,
    date_ DATE
);

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

INSERT INTO Mensagens (DataCriacao) --preencher as tabelas com os dados do reviews
SELECT date_
FROM Reviews;

INSERT INTO Propriedades (ID) --preencher as tabelas com os dados do reviews
SELECT listing_id
FROM Reviews;

INSERT INTO Propriedades (ID, MinNoites, MaxNoites) --preencher as tabelas com os dados do calendar
SELECT listing_id, minimum_nights, maximum_nights
FROM Calendar;

INSERT INTO Locacao (DataReserva, PrecoTotal, PrecoImpostos) 
SELECT date_, price, adjusted_price
FROM Calendar;

INSERT INTO Propriedades (ID, Nome, IDAnfitriao, PrecoDiaria, MinNoites) --preencher as tabelas com os dados do listings
SELECT ID, name_, host_id, price, minimum_nights --n sei colocar o nome do anfitriao
FROM Listings;

