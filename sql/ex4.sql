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

-- Para IDPropriedade = 1
INSERT INTO Quartos (IDPropriedade, NCamasSolteiro, NCamasCasal, Individual) 
VALUES (1, 2, 1, false),
       (1, 1, 0, true);
-- Para IDPropriedade = 2
VALUES (2, 2, 0, false),
       (2, 1, 1, false),
       (2, 0, 1, true);
-- Para IDPropriedade = 3
VALUES (3, 1, 0, false);
-- Para IDPropriedade = 4
VALUES (4, 2, 1, false),
       (4, 0, 1, true);
-- Para IDPropriedade = 5
VALUES (5, 3, 0, false),
       (5, 1, 1, false);
-- Para IDPropriedade = 6
VALUES (6, 1, 0, false);
-- Para IDPropriedade = 7
VALUES (7, 1, 1, false);
-- Para IDPropriedade = 8
VALUES (8, 2, 1, false),
       (8, 0, 1, true);
-- Para IDPropriedade = 9
VALUES (9, 1, 1, false),
       (9, 1, 0, false);
-- Para IDPropriedade = 10
VALUES (10, 1, 0, false);


-- Para IDPropriedade = 1
INSERT INTO Disponibilidade (IDPropriedade, Datas) 
VALUES (1, '2024-06-01'),
       (1, '2024-06-02'),
       (1, '2024-06-03'),
       (1, '2024-06-04'),
       (1, '2024-06-05');
-- Para IDPropriedade = 2
VALUES (2, '2024-06-06'),
       (2, '2024-06-07'),
       (2, '2024-06-08'),
       (2, '2024-06-09');
-- Para IDPropriedade = 3
VALUES (3, '2024-06-10'),
       (3, '2024-06-11');
-- Para IDPropriedade = 4
VALUES (4, '2024-06-12'),
       (4, '2024-06-13'),
       (4, '2024-06-14');
-- Para IDPropriedade = 5
VALUES (5, '2024-06-15'),
       (5, '2024-06-16'),
       (5, '2024-06-17');
-- Para IDPropriedade = 6
VALUES (6, '2024-06-18'),
       (6, '2024-06-19'),
       (6, '2024-06-20');
-- Para IDPropriedade = 7
VALUES (7, '2024-06-21'),
       (7, '2024-06-22');
-- Para IDPropriedade = 8
VALUES (8, '2024-06-23'),
       (8, '2024-06-24');
-- Para IDPropriedade = 9
VALUES (9, '2024-06-25');
-- Para IDPropriedade = 10
VALUES (10, '2024-06-26');



--- ATE AQUI EU FIZ


INSERT INTO Avaliacoes (Limpeza, NotaComunicacao, NotaLocalizacao, NotaValor,  Mensagem)
VALUES 
('Excelente', 5, 4, 'Excelente',  'A casa estava impecavelmente limpa e bem organizada. A comunicação com o proprietário foi ótima. A localização era conveniente e o valor da estadia foi excelente.');
('Bom', 4, 3, 'Bom',  'A limpeza do apartamento estava ok, poderia ser um pouco melhor. A comunicação com o anfitrião foi boa. A localização do apartamento era ótima, perto de muitas comodidades.');
('Muito boa', 5, 4, 'Excelente', 'A limpeza da casa rústica estava muito boa. O proprietário foi ótimo em se comunicar conosco. A localização na serra verde era excelente para quem gosta de tranquilidade.');
('Ótima', 5, 5, 'Excelente',  'O chalé aconchegante estava ótimo em termos de limpeza. O proprietário foi muito simpático e a comunicação foi excelente. A localização é perfeita para quem busca tranquilidade.');
('Excelente', 5, 4, 'Excelente', 'A casa de praia estava impecavelmente limpa. A comunicação com o proprietário foi excelente, e a localização na praia do norte é maravilhosa.');
('Ótima', 4, 5, 'Bom',  'O apartamento moderno estava em ótimas condições de limpeza. A comunicação com o anfitrião foi muito boa. A localização no centro era conveniente e o valor da estadia estava adequado.');
('Excelente', 5, 5, 'Excelente',  'A cabana nas montanhas estava extremamente limpa. A comunicação com o proprietário foi excelente. A localização oferecia uma vista panorâmica maravilhosa.');
('Boa', 3, 3, 'Bom', 'A casa de campo estava em boas condições de limpeza. A comunicação com o proprietário foi boa. A localização era tranquila e o valor da estadia estava adequado.');
('Ótima', 5, 4, 'Excelente', 'O apartamento charmoso estava muito limpo e bem cuidado. A comunicação com o anfitrião foi excelente. A localização no centro histórico era perfeita.');
('Muito boa', 4, 5, 'Bom', 'A casa de campo estava em condições muito boas de limpeza. A comunicação com o proprietário foi boa. A localização era ótima para quem busca tranquilidade.');


INSERT INTO Mensagens (DataCriacao,  Texto) 
VALUES 
('2024-05-11 08:30:00', 'Olá João, como você está?');
('2024-05-12 10:15:00', 'Oi Maria! Estou bem, obrigado. E você?');
('2024-05-13 14:20:00', 'Oi Maria, tudo bem?');
('2024-05-14 16:45:00', 'Oi Ana, estou bem, obrigada. E você?');
('2024-05-15 09:00:00', 'Olá Ana, estou bem sim. Como foi o seu dia?');
('2024-05-16 11:30:00', 'Oi João, meu dia foi bom, obrigada por perguntar.');
('2024-05-17 13:20:00','João, você viu a nova exposição no museu?');
('2024-05-18 15:10:00', 'Sim, Maria! Eu fui lá ontem. É incrível!');
('2024-05-19 17:00:00', 'Maria, podemos combinar de ir juntos?');
('2024-05-20 19:30:00', 'Claro, Ana! Vamos marcar uma data.');


INSERT INTO Locacoes (DataReserva, CheckIn, CheckOut, NHospedes, Imposto, PrecoTotal, PrecoTotalComTaxas, CodigoPromocional, ValorDesconto, Confirmada)
VALUES 
('2024-05-01', '2024-06-01', '2024-06-08', 4, 20.00, 1500.00, 1560.00, NULL, 0.00, true);
('2024-05-02', '2024-06-10', '2024-06-20', 2, 15.00, 1200.00, 1245.00, NULL, 0.00, true);
('2024-05-03', '2024-06-15', '2024-06-22', 3, 18.00, 1800.00, 1872.00, 'VERAO2024', 50.00, false);
('2024-05-05', '2024-06-20', '2024-06-25', 2, 12.00, 700.00, 724.00, NULL, 0.00, true);
('2024-05-06', '2024-07-01', '2024-07-10', 6, 25.00, 2800.00, 2875.00, 'VERAO2024', 75.00, false);
('2024-05-08', '2024-07-15', '2024-07-25', 4, 20.00, 2200.00, 2270.00, NULL, 0.00, true);
('2024-05-10', '2024-08-01', '2024-08-07', 5, 22.00, 3200.00, 3314.00, NULL, 0.00, false);
('2024-05-12', '2024-08-20', '2024-08-27', 3, 18.00, 1800.00, 1872.00, 'FERIAS2024', 50.00, true);
('2024-05-15', '2024-09-05', '2024-09-15', 4, 20.00, 2500.00, 2600.00, NULL, 0.00, false);
('2024-05-18', '2024-09-10', '2024-09-20', 2, 15.00, 1400.00, 1455.00, 'VERAO2024', 55.00, true);


INSERT INTO Anfitrioes (Conta, Roteamento, TipoConta) 
VALUES 
('conta1', 'roteamento1', 'tipo1');
('conta2', 'roteamento2', 'tipo2');
('conta3', 'roteamento3', 'tipo3');
('conta4', 'roteamento4', 'tipo4');
('conta5', 'roteamento5', 'tipo5');
('conta6', 'roteamento6', 'tipo6');
('conta7', 'roteamento7', 'tipo7');
('conta8', 'roteamento8', 'tipo8');
('conta9', 'roteamento9', 'tipo9');
('conta10', 'roteamento10', 'tipo10');


INSERT INTO Pontos_de_Interesse (Endereco, NOME) 
VALUES 
('Av. Paulista, 123','Parque das Flores');
('Rua Augusta, 456', 'Museu de Arte Moderna');
('Praça da Sé','Catedral Metropolitana de São Paulo');
('Av. Rio Branco, 789', 'Biblioteca Nacional');
('Rua Oscar Freire, 101', 'Galeria de Arte Contemporânea');
('Av. Atlântica, 555', 'Praia de Copacabana');
('Av. Beira Mar, 789', 'Praia de Ipanema');
('Rua das Palmeiras, 14', 'Parque Nacional da Tijuca');
('Av. das Flores, 999', 'Jardim Botânico');
('Rua das Margaridas, 21',  'Museu Histórico Nacional');


INSERT INTO Disponibilidade (Datas) 
VALUES 
('2024-05-15');
('2024-05-16');
('2024-05-17');
('2024-05-18');
('2024-05-19');
('2024-05-20');
('2024-05-21');
('2024-05-22');
('2024-05-23');
('2024-05-24');


INSERT INTO Fotos (Foto) 
VALUES 
('\x53616d706c6520666f746f'); -- Foto 1
('\x48656c6c6f20576f726c64'); -- Foto 2
('\x5468697320697320616e6f7468657220666f746f'); -- Foto 3
('\x5468697320697320616e6f7468657220666f75727468206578616d706c65'); -- Foto 4
('\x48656c6c6f20576f726c642066726f6d2074686520736572766572'); -- Foto 5
('\x5468697320697320612066696c652066726f6d2074686520736572766572'); -- Foto 6
('\x48656c6c6f20576f726c642066726f6d20746865206569676874686965'); -- Foto 7
('\x5468697320697320616e6f7468657220666f7572746820656967687468696572'); -- Foto 8
('\x48656c6c6f20576f726c642066726f6d20746865206578616d706c652e'); -- Foto 9
('\x5468697320697320616e6f7468657220666f75727468206578616d706c65'); -- Foto 10


