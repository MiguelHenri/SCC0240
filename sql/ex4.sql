INSERT INTO Localizacoes (Pais, Estado, Cidade, Bairro) 
VALUES 
('Brasil', 'Rio Grande do Sul', 'Porto Alegre', 'Moinhos de Vento'),
('Brasil', 'Santa Catarina', 'Florianópolis', 'Centro'),
('Brasil', 'Goiás', 'Goiânia', 'Setor Bueno'),
('Brasil', 'Espírito Santo', 'Vitória', 'Praia do Canto'),
('Brasil', 'Amazonas', 'Manaus', 'Adrianópolis'),
('Brasil', 'Paraíba', 'João Pessoa', 'Manaíra'),
('Brasil', 'Rio Grande do Norte', 'Natal', 'Ponta Negra'),
('Brasil', 'Pará', 'Belém', 'Batista Campos'),
('Brasil', 'Alagoas', 'Maceió', 'Pajuçara'),
('Brasil', 'Sergipe', 'Aracaju', 'Atalaia');

INSERT INTO Usuarios (Nome, Email, Sobrenome, Nascimento, Endereco, IDLocalizacao, Sexo, Telefone, Senha)
VALUES 
('João', 'joao@example.com', 'Silva', '1990-05-15', 'Rua das Flores, 123', 1, 'Masculino', '+55 11 98765-4321', 'senha123'),
('Maria', 'maria@example.com', 'Santos', '1985-10-20', 'Av. das Palmeiras, 456', 2, 'Feminino', '+55 21 98765-4321', 'senha456'),
('Pedro', 'pedro@example.com', 'Oliveira', '1992-03-25', 'Rua do Bosque, 789', 3, 'Masculino', '+55 48 98765-4321', 'senha789'),
('Ana', 'ana@example.com', 'Ferreira', '1988-07-12', 'Travessa das Árvores, 101', 4, 'Feminino', '+55 62 98765-4321', 'senhaabc'),
('Carlos', 'carlos@example.com', 'Ribeiro', '1995-01-30', 'Av. das Flores, 555', 5, 'Masculino', '+55 71 98765-4321', 'senha4567'),
('Amanda', 'amanda@example.com', 'Pereira', '1980-12-05', 'Rua do Mar, 789', 6, 'Feminino', '+55 84 98765-4321', 'senha7890'),
('Lucas', 'lucas@example.com', 'Almeida', '1991-09-18', 'Estrada da Montanha, 1010', 7, 'Masculino', '+55 83 98765-4321', 'senha1234'),
('Juliana', 'juliana@example.com', 'Cruz', '1983-04-27', 'Rua da Praia, 111', 8, 'Feminino', '+55 91 98765-4321', 'senha5678'),
('Mateus', 'mateus@example.com', 'Costa', '1987-11-10', 'Av. do Rio, 222', 9, 'Masculino', '+55 51 98765-4321', 'senhaabc123'),
('Laura', 'laura@example.com', 'Martins', '1993-06-23', 'Rua das Dunas, 333', 10, 'Feminino', '+55 85 98765-4321', 'senha123456'),
('Gabriel', 'gabriel@example.com', 'Lima', '1979-08-07', 'Travessa dos Lagos, 444', 1, 'Masculino', '+55 48 98765-4321', 'senha456789'),
('Fernanda', 'fernanda@example.com', 'Gomes', '1986-02-14', 'Av. das Montanhas, 555', 2, 'Feminino', '+55 47 98765-4321', 'senha789012'),
('Rafael', 'rafael@example.com', 'Souza', '1994-05-29', 'Rua da Cachoeira, 666', 3, 'Masculino', '+55 12 98765-4321', 'senha123abc'),
('Camila', 'camila@example.com', 'Nunes', '1982-10-03', 'Av. do Sol, 777', 4, 'Feminino', '+55 98 98765-4321', 'senhaabc1234'),
('Guilherme', 'guilherme@example.com', 'Vieira', '1989-03-16', 'Rua das Estrelas, 888', 5, 'Masculino', '+55 96 98765-4321', 'senha567890'),
('Isabela', 'isabela@example.com', 'Mendes', '1984-07-08', 'Travessa da Lua, 999', 6, 'Feminino', '+55 92 98765-4321', 'senha1234567'),
('Mariana', 'mariana@example.com', 'Silveira', '1990-12-22', 'Av. das Nuvens, 1010', 7, 'Feminino', '+55 94 98765-4321', 'senha890123'),
('Leonardo', 'leonardo@example.com', 'Barbosa', '1981-09-05', 'Rua dos Planetas, 1111', 8, 'Masculino', '+55 97 98765-4321', 'senha234567'),
('Larissa', 'larissa@example.com', 'Rocha', '1987-04-18', 'Travessa das Galáxias, 1212', 9, 'Feminino', '+55 93 98765-4321', 'senha345678'),
('Matheus', 'matheus@example.com', 'Dias', '1983-11-01', 'Av. das Constelações, 1313', 10, 'Masculino', '+55 99 98765-4321', 'senha456789');

INSERT INTO Anfitrioes (Conta, Roteamento, TipoConta, IDUsuario) 
VALUES 
('conta3', 'roteamento3', 'tipo3', 7),
('conta4', 'roteamento4', 'tipo4', 10),
('conta5', 'roteamento5', 'tipo5', 12),
('conta6', 'roteamento6', 'tipo6', 15),
('conta7', 'roteamento7', 'tipo7', 18),
('conta8', 'roteamento8', 'tipo8', 20),
('conta9', 'roteamento9', 'tipo9', 2),
('conta10', 'roteamento10', 'tipo10', 5),
('conta11', 'roteamento11', 'tipo11', 8),
('conta12', 'roteamento12', 'tipo12', 11);


INSERT INTO Propriedades (Nome, Endereco, IDLocalizacao, IDProprietario, NQuartos, NBanheiros, PrecoDiaria, NHospedesMax, NNoitesMin, NNoitesMax, PrecoLimpeza, HoraCheckIn, HoraCheckOut, Regras, Comodidades, CasaInteira)
VALUES 
('Casa da Colina', 'Rua das Flores, 321', 1, 1, 3, 2, 220.00, 6, 2, 7, 50.00, '14:00', '12:00', 'Não é permitido fumar dentro da casa.', 'Wi-Fi, Ar condicionado, Estacionamento gratuito', true),
('Apartamento Charmoso', 'Av. das Árvores, 789', 2, 2, 2, 1, 280.00, 4, 1, 14, 60.00, '15:00', '11:00', 'Proibido animais de estimação.', 'Piscina, Academia, TV a cabo', true),
('Cabana na Floresta', 'Estrada da Paz, 555', 3, 3, 1, 1, 180.00, 2, 1, 7, 30.00, '12:00', '10:00', 'Check-in automático.', 'Lareira, Trilhas para caminhadas, Cozinha rústica', true),
('Sobrado Aconchegante', 'Rua do Bosque, 456', 4, 4, 3, 2, 300.00, 8, 2, 10, 70.00, '14:00', '12:00', 'Não é permitido fumar dentro da casa.', 'Jardim, Churrasqueira, Sala de jogos', true),
('Casa de Praia Relaxante', 'Av. Beira Mar, 123', 5, 5, 4, 3, 400.00, 10, 3, 14, 80.00, '15:00', '11:00', 'Check-in após as 15:00.', 'Piscina, Chuveiro externo, Varanda com vista para o mar', true),
('Apartamento Estilo Loft', 'Rua da Liberdade, 1010', 1, 6, 2, 1, 200.00, 2, 1, 7, 40.00, '13:00', '10:00', 'Proibido festas ou eventos.', 'Wi-Fi, Ar condicionado, Cozinha moderna', true),
('Chalé Romântico', 'Travessa do Amor, 222', 1, 7, 1, 1, 250.00, 2, 1, 7, 50.00, '14:00', '12:00', 'Apenas para casais.', 'Lareira, Banheira de hidromassagem, Vista panorâmica', true),
('Casa de Campo Tradicional', 'Estrada do Interior, 999', 3, 8, 3, 2, 280.00, 6, 2, 10, 60.00, '14:00', '12:00', 'Não é permitido fumar dentro da casa.', 'Jardim, Churrasqueira, Cozinha completa', true),
('Apartamento Moderno', 'Av. das Indústrias, 555', 2, 9, 2, 1, 300.00, 4, 1, 14, 70.00, '15:00', '11:00', 'Proibido animais de estimação.', 'Wi-Fi, Academia, Estacionamento privativo', true),
('Cabana à Beira do Rio', 'Estrada do Rio, 777', 1, 10, 1, 1, 180.00, 2, 1, 7, 40.00, '12:00', '10:00', 'Check-in automático.', 'Rio particular, Deck privativo, Churrasqueira', true),
('Sobrado Familiar', 'Rua dos Sonhos, 789', 4, 1, 3, 2, 320.00, 8, 2, 14, 80.00, '15:00', '11:00', 'Não é permitido fumar dentro da casa.', 'Pátio com jardim, Churrasqueira, Sala de jogos', true),
('Casa de Praia Relaxante', 'Av. do Sol, 456', 5, 2, 4, 3, 420.00, 10, 3, 14, 90.00, '16:00', '12:00', 'Check-in após as 16:00.', 'Piscina, Chuveiro externo, Varanda com vista para o mar', true),
('Loft Urbano', 'Rua das Ruas, 1010', 1, 3, 2, 1, 220.00, 2, 1, 7, 50.00, '14:00', '12:00', 'Proibido festas ou eventos.', 'Wi-Fi, Ar condicionado, Cozinha americana', true),
('Chalé da Serra', 'Travessa da Serra, 222', 1, 4, 1, 1, 260.00, 2, 1, 7, 60.00, '14:00', '12:00', 'Apenas para casais.', 'Lareira, Banheira de hidromassagem, Vista panorâmica', true),
('Casa de Campo Acolhedora', 'Estrada da Tranquilidade, 999', 3, 5, 3, 2, 300.00, 6, 2, 10, 70.00, '14:00', '12:00', 'Não é permitido fumar dentro da casa.', 'Jardim, Churrasqueira, Cozinha completa', true),
('Apartamento de Luxo', 'Av. do Luxo, 555', 2, 6, 2, 1, 350.00, 4, 1, 14, 80.00, '15:00', '11:00', 'Proibido animais de estimação.', 'Wi-Fi, Academia, Estacionamento privativo', true),
('Cabana à Beira do Riacho', 'Estrada do Riacho, 777', 1, 7, 1, 1, 200.00, 2, 1, 7, 50.00, '12:00', '10:00', 'Check-in automático.', 'Riacho particular, Deck privativo, Churrasqueira', true),
('Sobrado Confortável', 'Rua dos Sonhos, 789', 4, 8, 3, 2, 340.00, 8, 2, 14, 90.00, '15:00', '11:00', 'Não é permitido fumar dentro da casa.', 'Pátio com jardim, Churrasqueira, Sala de jogos', true),
('Casa de Praia Exclusiva', 'Av. do Sol, 456', 5, 9, 4, 3, 450.00, 10, 3, 14, 100.00, '16:00', '12:00', 'Check-in após as 16:00.', 'Piscina, Chuveiro externo, Varanda com vista para o mar', true),
('Loft Moderno', 'Rua das Ruas, 1010', 1, 10, 2, 1, 240.00, 2, 1, 7, 60.00, '14:00', '12:00', 'Proibido festas ou eventos.', 'Wi-Fi, Ar condicionado, Cozinha americana', true);

INSERT INTO Quartos (IDPropriedade, NCamasSolteiro, NCamasCasal, Individual) 
VALUES 
-- Para IDPropriedade = 1
(1, 2, 1, false),
(1, 1, 0, true),
-- Para IDPropriedade = 2
(2, 2, 0, false),
(2, 1, 1, false),
(2, 0, 1, true),
-- Para IDPropriedade = 3
(3, 1, 0, false),
-- Para IDPropriedade = 4
(4, 2, 1, false),
(4, 0, 1, true),
-- Para IDPropriedade = 5
(5, 3, 0, false),
(5, 1, 1, false),
-- Para IDPropriedade = 6
(6, 1, 0, false),
-- Para IDPropriedade = 7
(7, 1, 1, false),
-- Para IDPropriedade = 8
(8, 2, 1, false),
(8, 0, 1, true),
-- Para IDPropriedade = 9
(9, 1, 1, false),
(9, 1, 0, false),
-- Para IDPropriedade = 10
(10, 1, 0, false);


-- Para IDPropriedade = 1
INSERT INTO Disponibilidade (IDPropriedade, Datas) 
VALUES 
(1, '2024-06-01'),
(1, '2024-06-02'),
(1, '2024-06-03'),
(1, '2024-06-04'),
(1, '2024-06-05'),
-- Para IDPropriedade = 2
(2, '2024-06-06'),
(2, '2024-06-07'),
(2, '2024-06-08'),
(2, '2024-06-09'),
-- Para IDPropriedade = 3
(3, '2024-06-10'),
(3, '2024-06-11'),
-- Para IDPropriedade = 4
(4, '2024-06-12'),
(4, '2024-06-13'),
(4, '2024-06-14'),
-- Para IDPropriedade = 5
(5, '2024-06-15'),
(5, '2024-06-16'),
(5, '2024-06-17'),
-- Para IDPropriedade = 6
(6, '2024-06-18'),
(6, '2024-06-19'),
(6, '2024-06-20'),
-- Para IDPropriedade = 7
(7, '2024-06-21'),
(7, '2024-06-22'),
-- Para IDPropriedade = 8
(8, '2024-06-23'),
(8, '2024-06-24'),
-- Para IDPropriedade = 9
(9, '2024-06-25'),
-- Para IDPropriedade = 10
(10, '2024-06-26');



INSERT INTO Mensagens (DataCriacao, IDRemetente, IDDestinatario, Texto) 
VALUES 
('2024-05-01', 1, 2, 'Olá! Gostaria de saber mais sobre a sua propriedade.'),
('2024-05-01', 2, 1, 'Claro! O que você gostaria de saber?'),
('2024-05-02', 3, 4, 'A casa está disponível para o próximo fim de semana?'),
('2024-05-02', 4, 3, 'Sim, está disponível. Você gostaria de reservar?'),
('2024-05-03', 5, 6, 'Qual é o horário de check-in na sua propriedade?'),
('2024-05-03', 6, 5, 'O check-in pode ser feito a partir das 14:00.'),
('2024-05-04', 7, 8, 'A casa tem Wi-Fi disponível?'),
('2024-05-04', 8, 7, 'Sim, a casa tem Wi-Fi de alta velocidade.'),
('2024-05-05', 9, 10, 'Posso levar meu cachorro para a sua propriedade?'),
('2024-05-05', 10, 9, 'Desculpe, mas não aceitamos animais de estimação.'),
('2024-05-06', 11, 12, 'O bairro é seguro para caminhadas noturnas?'),
('2024-05-06', 12, 11, 'Sim, é um bairro muito seguro.'),
('2024-05-07', 13, 14, 'A propriedade tem estacionamento disponível?'),
('2024-05-07', 14, 13, 'Sim, temos estacionamento gratuito para os hóspedes.'),
('2024-05-08', 15, 16, 'Quais são as regras da casa?'),
('2024-05-08', 16, 15, 'As regras principais são: não fumar dentro da casa e respeitar os horários de silêncio.'),
('2024-05-09', 17, 18, 'O imóvel tem cozinha completa?'),
('2024-05-09', 18, 17, 'Sim, a cozinha está totalmente equipada.'),
('2024-05-10', 19, 20, 'Há um supermercado próximo à casa?');

INSERT INTO Avaliacoes (IDMensagem, IDPropriedade, NotaLimpeza, NotaComunicacao, NotaLocalizacao, NotaValor, Mensagem)
VALUES 
(1, 1, 5, 5, 4, 4, 'Ótima experiência, casa muito limpa e anfitrião comunicativo.'),
(2, 2, 4, 3, 5, 4, 'Bom apartamento, mas a comunicação poderia ser melhor.'),
(3, 3, 3, 4, 4, 3, 'Cabana aconchegante, mas limpeza deixou a desejar.'),
(4, 4, 5, 5, 5, 5, 'Perfeito para família, muito conforto e boa localização.'),
(5, 5, 4, 4, 4, 4, 'Casa de praia relaxante, tudo muito bom.'),
(6, 6, 2, 3, 4, 3, 'Limpeza ruim, mas boa localização e preço justo.'),
(7, 7, 5, 5, 5, 5, 'Chalé romântico e muito bem cuidado.'),
(8, 8, 4, 5, 5, 4, 'Casa de campo tradicional e muito confortável.'),
(9, 9, 3, 4, 3, 3, 'Apartamento moderno, mas com algumas falhas na limpeza.'),
(10, 10, 5, 5, 5, 5, 'Cabana maravilhosa, local tranquilo e limpo.'),
(11, 1, 4, 4, 4, 4, 'Sobrado confortável e anfitrião atencioso.'),
(12, 2, 5, 5, 5, 5, 'Casa de veraneio incrível, voltarei com certeza.'),
(13, 3, 3, 4, 4, 3, 'Loft urbano bom, mas limpeza precisa melhorar.'),
(14, 4, 5, 5, 5, 5, 'Chalé da serra perfeito para casais.'),
(15, 5, 2, 3, 4, 3, 'Casa de campo rústica e tranquila, mas limpeza não foi boa.'),
(16, 6, 4, 4, 4, 4, 'Apartamento de luxo muito bom.'),
(17, 7, 5, 5, 5, 5, 'Cabana à beira do lago maravilhosa.'),
(18, 8, 3, 3, 3, 3, 'Sobrado confortável, mas limpeza deixou a desejar.'),
(19, 9, 5, 5, 5, 5, 'Casa de praia relaxante e bem cuidada.'),
(20, 10, 4, 4, 4, 4, 'Loft moderno e anfitrião atencioso.');



INSERT INTO Locacoes (IDLocatario, IDPropriedade, DataReserva, CheckIn, CheckOut, NHospedes, Imposto, PrecoTotal, PrecoTotalComTaxas, CodigoPromocional, ValorDesconto, Confirmada)
VALUES 
(8, 1, '2024-05-01', '2024-05-15', '2024-05-20', 4, 30.00, 1000.00, 1030.00, 'VERAO2024', 50.00, true),
(9, 2, '2024-05-02', '2024-06-01', '2024-06-10', 2, 20.00, 900.00, 920.00, 'DESCONTO10', 30.00, true),
(10, 3, '2024-05-03', '2024-05-20', '2024-05-25', 2, 15.00, 600.00, 615.00, NULL, 0.00, true),
(11, 4, '2024-05-04', '2024-07-01', '2024-07-07', 6, 35.00, 1500.00, 1535.00, 'INVERNO', 70.00, true),
(12, 5, '2024-05-05', '2024-06-10', '2024-06-20', 8, 50.00, 2500.00, 2550.00, 'PROMO50', 100.00, true),
(13, 6, '2024-05-06', '2024-05-15', '2024-05-18', 2, 10.00, 600.00, 610.00, NULL, 0.00, true),
(14, 7, '2024-05-07', '2024-08-01', '2024-08-10', 2, 15.00, 900.00, 915.00, 'AGOSTO', 40.00, true),
(15, 8, '2024-05-08', '2024-05-25', '2024-06-01', 4, 25.00, 1400.00, 1425.00, NULL, 0.00, true),
(16, 9, '2024-05-09', '2024-06-01', '2024-06-05', 2, 10.00, 500.00, 510.00, 'JUNHO2024', 20.00, true),
(17, 10, '2024-05-10', '2024-06-15', '2024-06-20', 2, 15.00, 900.00, 915.00, NULL, 0.00, true),
(18, 11, '2024-05-11', '2024-07-05', '2024-07-12', 6, 35.00, 1600.00, 1635.00, 'JULHO2024', 70.00, true),
(19, 12, '2024-05-12', '2024-06-10', '2024-06-17', 6, 30.00, 1700.00, 1730.00, NULL, 0.00, true),
(20, 13, '2024-05-13', '2024-07-20', '2024-07-25', 2, 20.00, 800.00, 820.00, 'PROMO20', 40.00, true),
(8, 14, '2024-05-14', '2024-05-30', '2024-06-04', 4, 25.00, 1300.00, 1325.00, NULL, 0.00, true),
(9, 15, '2024-05-15', '2024-06-05', '2024-06-10', 2, 15.00, 600.00, 615.00, 'DESCONTO15', 30.00, true),
(10, 16, '2024-05-16', '2024-07-01', '2024-07-07', 2, 20.00, 1000.00, 1020.00, NULL, 0.00, true),
(11, 17, '2024-05-17', '2024-06-15', '2024-06-20', 6, 35.00, 1500.00, 1535.00, 'INVERNO15', 50.00, true),
(12, 18, '2024-05-18', '2024-07-10', '2024-07-20', 8, 50.00, 2800.00, 2850.00, 'VERAO50', 100.00, true),
(13, 19, '2024-05-19', '2024-08-01', '2024-08-10', 4, 25.00, 1400.00, 1425.00, NULL, 0.00, true),
(14, 20, '2024-05-20', '2024-06-01', '2024-06-10', 2, 15.00, 800.00, 815.00, 'JUNHO20', 20.00, true);


INSERT INTO Pontos_de_Interesse (Endereco, IDLocalizacao, Nome) 
VALUES 
('Rua das Flores, 123', 1, 'Parque Central'),
('Avenida das Nações, 456', 2, 'Museu de Arte Moderna'),
('Praça da Liberdade, 789', 3, 'Monumento Histórico'),
('Rua do Comércio, 101', 4, 'Mercado Municipal'),
('Avenida Paulista, 202', 5, 'Centro Cultural'),
('Rua dos Estudantes, 303', 6, 'Biblioteca Pública'),
('Rua do Sol, 404', 7, 'Praia do Sol'),
('Avenida das Palmeiras, 505', 8, 'Jardim Botânico'),
('Rua das Estrelas, 606', 9, 'Planetário'),
('Avenida das Montanhas, 707', 10, 'Trilha da Montanha');


INSERT INTO Fotos (IDAvaliacao, Foto) 
VALUES 
(1, 'foto1.jpg'),
(1, 'foto2.jpg'),
(2, 'foto3.jpg'),
(2, 'foto4.jpg'),
(3, 'foto5.jpg'),
(3, 'foto6.jpg'),
(4, 'foto7.jpg'),
(4, 'foto8.jpg'),
(5, 'foto9.jpg'),
(5, 'foto10.jpg'),
(6, 'foto11.jpg'),
(6, 'foto12.jpg'),
(7, 'foto13.jpg'),
(7, 'foto14.jpg'),
(8, 'foto15.jpg');



