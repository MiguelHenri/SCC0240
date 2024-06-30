DROP TABLE IF EXISTS Propriedades CASCADE;
CREATE TABLE Propriedades(
    ID BIGINT , 
    Nome VARCHAR(300) ,
    Endereco VARCHAR(100) ,
    IDLocalizacao INT ,
    IDAnfitriao INT ,
    NQuartos INT ,
    NBanheiros INT ,
    PrecoDiaria float ,
    NMaxHospedes INT ,
    MinNoites INT ,
    MaxNoites INT ,
    ValorLimpeza FLOAT,
    HoraCheckIn TIME,
    HoraCheckOut TIME,
    CasaInteira BOOLEAN
);


DROP TABLE IF EXISTS Localizacoes CASCADE; 
CREATE TABLE Localizacoes(
    ID INT ,
    Pais VARCHAR(50) ,
    Estado VARCHAR(50) ,
    Cidade VARCHAR(50) ,
    Bairro VARCHAR(50) 
);

DROP TABLE IF EXISTS Usuarios CASCADE;
CREATE TABLE Usuarios(
    ID INT ,
    Nome VARCHAR(100) ,
    Email VARCHAR(50) ,
    Sobrenome VARCHAR(100) ,
    Nascimento DATE ,
    Endereco VARCHAR(100) ,
    Sexo VARCHAR(50) ,
    Telefone VARCHAR(50) ,
    Senha VARCHAR(50) ,
    IDLocalizacao INT ,
    EAnfitriao BOOLEAN
);

DROP TABLE IF EXISTS Mensagens CASCADE;
CREATE TABLE Mensagens(
    IDPropriedade BIGINT ,
    DataCriacao VARCHAR (50) ,
    IDRemetente INT ,
    IDDestinatario INT ,
    Texto VARCHAR(200) ,
    ClassificacaoLocalizacao VARCHAR(50),
    ClassificacaoComunicacao VARCHAR(50),
    ClassificacaoValor VARCHAR(50),
    ClassificacaoLimpeza VARCHAR(50)
);

DROP TABLE IF EXISTS Locacao CASCADE;
CREATE TABLE Locacao(
    IDHospede INT ,
    IDPropriedade BIGINT ,
    DataReserva DATE ,
    DataCheckIn DATE ,
    DataCheckOut DATE ,
    NHospedes INT ,
    PrecoTotal FLOAT,
    Imposto FLOAT,
    PrecoImpostos FLOAT,
    CodigoPromocional VARCHAR(50),
    ValorDesconto FLOAT,
    Confirmada BOOLEAN 
);


DROP TABLE IF EXISTS PontosInteresse CASCADE;
CREATE TABLE PontosInteresse(
    IDLocalizacao INT ,
    NOME VARCHAR(50) 
);


DROP TABLE IF EXISTS Fotos CASCADE;
CREATE TABLE Fotos(
    DataCriacao DATE,
    Foto BYTEA ,
    IDRemetente INT,
    IDDestinatario INT
);

DROP TABLE IF EXISTS Quartos CASCADE;
CREATE TABLE Quartos(
    ID SERIAL ,
    NSolteiro INT ,
    NCasal INT ,
    Individual BOOLEAN ,
    IDPropriedade BIGINT 
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
