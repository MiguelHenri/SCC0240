DROP TABLE IF EXISTS Propriedades CASCADE;
CREATE TABLE Propriedades(
    ID SERIAL NOT NULL,
    Nome VARCHAR(50) NOT NULL,
    Endereco VARCHAR(100) NOT NULL,
    IDLocalizacao SERIAL NOT NULL,
    IDProprietario SERIAL NOT NULL,
    NQuartos INT NOT NULL,
    NBanheiros INT NOT NULL,
    PrecoDiaria float NOT NULL,
    NHospedesMax INT NOT NULL,
    NNoitesMin INT NOT NULL,
    NNoitesMax INT NOT NULL,
    PrecoLimpeza FLOAT,
    HoraCheckIn TIME,
    HoraCheckOut TIME,
    Regras VARCHAR(100),
    COMODIDADES VARCHAR(100)
);

DROP TABLE IF EXISTS Avaliacoes CASCADE;
CREATE TABLE Avaliacoes(
    ID SERIAL NOT NULL,
    IDMensagem SERIAL NOT NULL,
    Limpeza VARCHAR(50),
    NotaComunicacao INT,
    NotaLocalizacao INT,
    NotaValor VARCHAR(50),
    IDPropriedade SERIAL NOT NULL,
    Mensagem VARCHAR(200)
);

DROP TABLE IF EXISTS Localizacoes CASCADE;
CREATE TABLE Localizacoes(
    ID SERIAL NOT NULL,
    Pais VARCHAR(50) NOT NULL,
    Estado VARCHAR(50) NOT NULL,
    Cidade VARCHAR(50) NOT NULL,
    Bairro VARCHAR(50) NOT NULL
);

DROP TABLE IF EXISTS Usuarios CASCADE;
CREATE TABLE Usuarios(
    ID SERIAL NOT NULL,
    Nome VARCHAR(50) NOT NULL,
    Email VARCHAR(50) NOT NULL,
    Sobrenome VARCHAR(50) NOT NULL,
    Nascimento DATE NOT NULL,
    Endereco VARCHAR(100) NOT NULL,
    Sexo VARCHAR(50) NOT NULL,
    Telefone VARCHAR(50) NOT NULL,
    Senha VARCHAR(50) NOT NULL,
    IDLocalizacao SERIAL NOT NULL
);

DROP TABLE IF EXISTS Mensagens CASCADE;
CREATE TABLE Mensagens(
    ID SERIAL NOT NULL,
    DataCriacao VARCHAR (50) NOT NULL,
    IDRemetente SERIAL NOT NULL,
    IDDestinatario SERIAL NOT NULL,
    Texto VARCHAR(200) NOT NULL
);

DROP TABLE IF EXISTS Locacoes CASCADE;
CREATE TABLE Locacoes(
    ID SERIAL NOT NULL,
    IDLocatario SERIAL NOT NULL,
    IDPropriedade SERIAL NOT NULL,
    DataReserva DATE NOT NULL,
    CheckIn DATE NOT NULL,
    CheckOut DATE NOT NULL,
    NHospedes INT NOT NULL,
    Imposto FLOAT,
    PrecoTotal FLOAT,
    PrecoTotalComTaxas FLOAT,
    CodigoPromocional VARCHAR(50),
    ValorDesconto FLOAT,
    Confirmada BIT NOT NULL
);

DROP TABLE IF EXISTS Anfitrioes CASCADE;
CREATE TABLE Anfitrioes(
    ID SERIAL NOT NULL,
    Conta VARCHAR(50) NOT NULL,
    Roteamento VARCHAR(50) NOT NULL,
    TipoConta VARCHAR(50) NOT NULL,
    IDUsuario SERIAL NOT NULL
);

DROP TABLE IF EXISTS Pontos_de_Interesse CASCADE;
CREATE TABLE Pontos_de_Interesse(
    ID SERIAL NOT NULL,
    Endereco VARCHAR(100) NOT NULL,
    IDLocalizacao SERIAL NOT NULL,
    NOME VARCHAR(50) NOT NULL
);

DROP TABLE IF EXISTS Disponibilidade CASCADE;
CREATE TABLE Disponibilidade(
    ID SERIAL NOT NULL,
    Datas DATE NOT NULL,
    IDPropriedade SERIAL NOT NULL
);

DROP TABLE IF EXISTS Fotos CASCADE;
CREATE TABLE Fotos(
    ID SERIAL NOT NULL,
    IDAvaliacao SERIAL NOT NULL,
    Foto BYTEA NOT NULL
);

DROP TABLE IF EXISTS Quartos CASCADE;
CREATE TABLE Quartos(
    NCamasSolteiro INT NOT NULL,
    ID SERIAL NOT NULL,
    NCamasCasal INT NOT NULL,
    Individual BIT NOT NULL,
    IDPropriedade SERIAL NOT NULL
);
