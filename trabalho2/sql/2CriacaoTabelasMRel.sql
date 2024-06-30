DROP TABLE IF EXISTS Propriedades CASCADE;
CREATE TABLE Propriedades(
    ID SERIAL,
    Nome VARCHAR(300),
    Endereco VARCHAR(100),
    IDLocalizacao INT,
    IDAnfitriao INT,
    NQuartos INT,
    NBanheiros INT,
    PrecoDiaria float,
    NMaxHospedes INT,
    MinNoites INT,
    MaxNoites INT,
    ValorLimpeza FLOAT,
    HoraCheckIn TIME,
    HoraCheckOut TIME,
    CasaInteira BOOLEAN,
    PRIMARY KEY (Nome, IDAnfitriao)
);


DROP TABLE IF EXISTS Localizacoes CASCADE; 
CREATE TABLE Localizacoes(
    ID SERIAL PRIMARY KEY,
    Pais VARCHAR(50),
    Estado VARCHAR(50),
    Cidade VARCHAR(50),
    Bairro VARCHAR(50) 
);

DROP TABLE IF EXISTS Usuarios CASCADE;
CREATE TABLE Usuarios(
    ID INT PRIMARY KEY, 
    Nome VARCHAR(100),
    Email VARCHAR(50),
    Sobrenome VARCHAR(100),
    Nascimento DATE,
    Endereco VARCHAR(100),
    Sexo VARCHAR(50),
    Telefone VARCHAR(50),
    Senha VARCHAR(50),
    IDLocalizacao INT,
    EAnfitriao BOOLEAN
);

DROP TABLE IF EXISTS Mensagens CASCADE;
CREATE TABLE Mensagens(
    IDPropriedade BIGINT,
    DataCriacao VARCHAR (50),
    IDRemetente INT,
    IDDestinatario INT,
    Texto VARCHAR(200),
    ClassificacaoLocalizacao VARCHAR(50),
    ClassificacaoComunicacao VARCHAR(50),
    ClassificacaoValor VARCHAR(50),
    ClassificacaoLimpeza VARCHAR(50)
    -- sem PK, pois Reviews não possui os atributos suficientes
);

DROP TABLE IF EXISTS Locacao CASCADE;
CREATE TABLE Locacao(
    IDHospede INT,
    IDPropriedade BIGINT,
    DataReserva DATE,
    DataCheckIn DATE,
    DataCheckOut DATE,
    NHospedes INT,
    PrecoTotal FLOAT,
    Imposto FLOAT,
    PrecoImpostos FLOAT,
    CodigoPromocional VARCHAR(50),
    ValorDesconto FLOAT,
    Confirmada BOOLEAN,
    PRIMARY KEY (DataCheckIn, IDHospede, IDPropriedade)
);


DROP TABLE IF EXISTS PontosInteresse CASCADE;
CREATE TABLE PontosInteresse(
    IDLocalizacao INT,
    NOME VARCHAR(50),
    PRIMARY KEY (IDLocalizacao, Nome)
);


DROP TABLE IF EXISTS Fotos CASCADE;
CREATE TABLE Fotos(
    DataCriacao DATE,
    Foto BYTEA,
    IDRemetente INT,
    IDDestinatario INT,
    PRIMARY KEY (DataCriacao, Foto, IDRemetente, IDDestinatario)
);

DROP TABLE IF EXISTS Quartos CASCADE;
CREATE TABLE Quartos(
    ID SERIAL,
    NSolteiro INT,
    NCasal INT,
    Individual BOOLEAN,
    IDPropriedade BIGINT,
    PRIMARY KEY (ID, IDPropriedade)
);

DROP TABLE IF EXISTS Comodidades CASCADE;
CREATE TABLE Comodidades(
    IDPropriedade BIGINT,
    Comodidade VARCHAR(50),
    PRIMARY KEY (IDPropriedade, Comodidade)
);

DROP TABLE IF EXISTS Contas CASCADE;
CREATE TABLE Contas(
    IDUsuario INT,
    Numero INT,
    Tipo VARCHAR(50),
    Roteamento VARCHAR(50),
    PRIMARY KEY (IDUsuario, Numero, Tipo, Roteamento)
);

DROP TABLE IF EXISTS DatasDisponiveis CASCADE;
CREATE TABLE DatasDisponiveis(
    IDPropriedade BIGINT,
    Data DATE,
    PRIMARY KEY (IDPropriedade, Data)
);

DROP TABLE IF EXISTS Regras CASCADE;
CREATE TABLE Regras(
    IDPropriedade BIGINT,
    Regra VARCHAR(200),
    PRIMARY KEY (IDPropriedade, Regra)
);