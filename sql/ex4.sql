INSERT INTO Propriedades (Nome, Endereco, NQuartos, NBanheiros, PrecoDiaria, NHospedesMax, NNoitesMin, NNoitesMax, PrecoLimpeza, HoraCheckIn, HoraCheckOut, Regras, COMODIDADES)
VALUES ('Casa na Praia', 'Rua das Palmeiras, 123, Praia do Sol', 3, 2, 200.00, 6, 2, 7, 50.00, '14:00', '12:00', 'Não é permitido fumar dentro de casa.', 'Wi-Fi, Ar condicionado, Estacionamento gratuito');

INSERT INTO Propriedades (Nome, Endereco,  NQuartos, NBanheiros, PrecoDiaria, NHospedesMax, NNoitesMin, NNoitesMax, PrecoLimpeza, HoraCheckIn, HoraCheckOut, Regras, COMODIDADES)
VALUES ('Apartamento Luxo', 'Av. Principal, 456, Centro', 2, 1, 300.00, 4, 1, 14, 60.00, '15:00', '11:00', 'Proibido animais de estimação.', 'Piscina, Academia, TV a cabo');

INSERT INTO Propriedades (Nome, Endereco,  NQuartos, NBanheiros, PrecoDiaria, NHospedesMax, NNoitesMin, NNoitesMax, PrecoLimpeza, HoraCheckIn, HoraCheckOut, Regras, COMODIDADES)
VALUES ('Casa Rústica', 'Estrada da Montanha, 789, Serra Verde',  4, 3, 150.00, 8, 2, 10, NULL, '16:00', '10:00', NULL, 'Lareira, Churrasqueira, Vista panorâmica');

INSERT INTO Propriedades (Nome, Endereco,  NQuartos, NBanheiros, PrecoDiaria, NHospedesMax, NNoitesMin, NNoitesMax, PrecoLimpeza, HoraCheckIn, HoraCheckOut, Regras, COMODIDADES)
VALUES ('Chalé Aconchegante', 'Rua das Flores, 101, Campo Florido', 1, 1, 100.00, 2, 1, 5, 30.00, '14:00', '12:00', 'Check-out tardio disponível mediante solicitação.', 'Lareira, Jardim, Café da manhã incluso');

INSERT INTO Propriedades (Nome, Endereco,  NQuartos, NBanheiros, PrecoDiaria, NHospedesMax, NNoitesMin, NNoitesMax, PrecoLimpeza, HoraCheckIn, HoraCheckOut, Regras, COMODIDADES)
VALUES ('Casa de Praia', 'Av. Beira Mar, 789, Praia do Norte', 5, 4, 250.00, 10, 3, 14, 70.00, '15:00', '12:00', 'Proibido festas ou eventos.', 'Wi-Fi, Piscina, Churrasqueira');

INSERT INTO Propriedades (Nome, Endereco,  NQuartos, NBanheiros, PrecoDiaria, NHospedesMax, NNoitesMin, NNoitesMax, PrecoLimpeza, HoraCheckIn, HoraCheckOut, Regras, COMODIDADES)
VALUES ('Apartamento Moderno', 'Av. das Torres, 555, Centro', 3, 2, 180.00, 6, 2, 10, 50.00, '14:00', '11:00', NULL, 'Wi-Fi, Academia, Estacionamento gratuito');

INSERT INTO Propriedades (Nome, Endereco,  NQuartos, NBanheiros, PrecoDiaria, NHospedesMax, NNoitesMin, NNoitesMax, PrecoLimpeza, HoraCheckIn, HoraCheckOut, Regras, COMODIDADES)
VALUES ('Casa de Campo', 'Rua das Margaridas, 789, Campo Verde', 3, 2, 180.00, 6, 2, 10, 50.00, '15:00', '12:00', 'Check-in a partir das 14:00.', 'Churrasqueira, Jardim, Estacionamento gratuito');

INSERT INTO Propriedades (Nome, Endereco,  NQuartos, NBanheiros, PrecoDiaria, NHospedesMax, NNoitesMin, NNoitesMax, PrecoLimpeza, HoraCheckIn, HoraCheckOut, Regras, COMODIDADES)
VALUES ('Chalé Romântico', 'Rua dos Namorados, 14, Vale do Amor', 1, 1, 120.00, 2, 1, 5, 40.00, '14:00', '12:00', 'Perfeito para lua de mel.', 'Lareira, Banheira de hidromassagem, Vista panorâmica');

INSERT INTO Propriedades (Nome, Endereco,  NQuartos, NBanheiros, PrecoDiaria, NHospedesMax, NNoitesMin, NNoitesMax, PrecoLimpeza, HoraCheckIn, HoraCheckOut, Regras, COMODIDADES)
VALUES ('Casa de Campo Luxuosa', 'Estrada dos Pinheiros, 123, Serra Dourada', 6, 4, 350.00, 12, 3, 14, 80.00, '16:00', '12:00', 'Check-out tardio disponível mediante solicitação.', 'Piscina, Sauna, Sala de jogos');

INSERT INTO Propriedades (Nome, Endereco,  NQuartos, NBanheiros, PrecoDiaria, NHospedesMax, NNoitesMin, NNoitesMax, PrecoLimpeza, HoraCheckIn, HoraCheckOut, Regras, COMODIDADES)
VALUES ('Bangalô à Beira-Mar', 'Av. das Ondas, 789, Praia Azul', 2, 1, 280.00, 4, 2, 7, 60.00, '15:00', '11:00', 'Proibido fumar dentro do bangalô.', 'Ar condicionado, Varanda privativa, Acesso direto à praia');


INSERT INTO Avaliacoes (Limpeza, NotaComunicacao, NotaLocalizacao, NotaValor,  Mensagem)
VALUES ('Excelente', 5, 4, 'Excelente',  'A casa estava impecavelmente limpa e bem organizada. A comunicação com o proprietário foi ótima. A localização era conveniente e o valor da estadia foi excelente.');

INSERT INTO Avaliacoes (Limpeza, NotaComunicacao, NotaLocalizacao, NotaValor,  Mensagem)
VALUES ('Bom', 4, 3, 'Bom',  'A limpeza do apartamento estava ok, poderia ser um pouco melhor. A comunicação com o anfitrião foi boa. A localização do apartamento era ótima, perto de muitas comodidades.');

INSERT INTO Avaliacoes (Limpeza, NotaComunicacao, NotaLocalizacao, NotaValor,  Mensagem)
VALUES ('Muito boa', 5, 4, 'Excelente', 'A limpeza da casa rústica estava muito boa. O proprietário foi ótimo em se comunicar conosco. A localização na serra verde era excelente para quem gosta de tranquilidade.');

INSERT INTO Avaliacoes (Limpeza, NotaComunicacao, NotaLocalizacao, NotaValor,  Mensagem)
VALUES ('Ótima', 5, 5, 'Excelente',  'O chalé aconchegante estava ótimo em termos de limpeza. O proprietário foi muito simpático e a comunicação foi excelente. A localização é perfeita para quem busca tranquilidade.');

INSERT INTO Avaliacoes (Limpeza, NotaComunicacao, NotaLocalizacao, NotaValor,  Mensagem)
VALUES ('Excelente', 5, 4, 'Excelente', 'A casa de praia estava impecavelmente limpa. A comunicação com o proprietário foi excelente, e a localização na praia do norte é maravilhosa.');

INSERT INTO Avaliacoes (Limpeza, NotaComunicacao, NotaLocalizacao, NotaValor,  Mensagem)
VALUES ('Ótima', 4, 5, 'Bom',  'O apartamento moderno estava em ótimas condições de limpeza. A comunicação com o anfitrião foi muito boa. A localização no centro era conveniente e o valor da estadia estava adequado.');

INSERT INTO Avaliacoes (Limpeza, NotaComunicacao, NotaLocalizacao, NotaValor,  Mensagem)
VALUES ('Excelente', 5, 5, 'Excelente',  'A cabana nas montanhas estava extremamente limpa. A comunicação com o proprietário foi excelente. A localização oferecia uma vista panorâmica maravilhosa.');

INSERT INTO Avaliacoes (Limpeza, NotaComunicacao, NotaLocalizacao, NotaValor,  Mensagem)
VALUES ('Boa', 3, 3, 'Bom', 'A casa de campo estava em boas condições de limpeza. A comunicação com o proprietário foi boa. A localização era tranquila e o valor da estadia estava adequado.');

INSERT INTO Avaliacoes (Limpeza, NotaComunicacao, NotaLocalizacao, NotaValor,  Mensagem)
VALUES ('Ótima', 5, 4, 'Excelente', 'O apartamento charmoso estava muito limpo e bem cuidado. A comunicação com o anfitrião foi excelente. A localização no centro histórico era perfeita.');

INSERT INTO Avaliacoes (Limpeza, NotaComunicacao, NotaLocalizacao, NotaValor, Mensagem)
VALUES ('Muito boa', 4, 5, 'Bom', 'A casa de campo estava em condições muito boas de limpeza. A comunicação com o proprietário foi boa. A localização era ótima para quem busca tranquilidade.');


INSERT INTO Localizacoes (Pais, Estado, Cidade, Bairro) VALUES ('Brasil', 'Rio de Janeiro', 'Rio de Janeiro', 'Copacabana');
INSERT INTO Localizacoes (Pais, Estado, Cidade, Bairro) VALUES ('Brasil', 'São Paulo', 'São Paulo', 'Pinheiros');
INSERT INTO Localizacoes (Pais, Estado, Cidade, Bairro) VALUES ('Estados Unidos', 'California', 'Los Angeles', 'Hollywood');
INSERT INTO Localizacoes (Pais, Estado, Cidade, Bairro) VALUES ('Estados Unidos', 'New York', 'New York City', 'Manhattan');
INSERT INTO Localizacoes (Pais, Estado, Cidade, Bairro) VALUES ('França', 'Île-de-France', 'Paris', 'Le Marais');
INSERT INTO Localizacoes (Pais, Estado, Cidade, Bairro) VALUES ('Itália', 'Lazio', 'Roma', 'Trastevere');
INSERT INTO Localizacoes (Pais, Estado, Cidade, Bairro) VALUES ('Espanha', 'Catalunha', 'Barcelona', 'Gràcia');
INSERT INTO Localizacoes (Pais, Estado, Cidade, Bairro) VALUES ('Japão', 'Tóquio', 'Tóquio', 'Shibuya');
INSERT INTO Localizacoes (Pais, Estado, Cidade, Bairro) VALUES ('Canadá', 'Ontário', 'Toronto', 'Downtown');
INSERT INTO Localizacoes (Pais, Estado, Cidade, Bairro) VALUES ('Austrália', 'Nova Gales do Sul', 'Sydney', 'Bondi Beach');


INSERT INTO Usuarios (Nome, Email, Sobrenome, Nascimento, Endereco, Sexo, Telefone, Senha)
VALUES ('Maria', 'maria@example.com', 'Silva', '1990-05-15', 'Rua das Flores, 123', 'Feminino', '+55 11 98765-4321', 'senha123');

INSERT INTO Usuarios (Nome, Email, Sobrenome, Nascimento, Endereco, Sexo, Telefone, Senha)
VALUES ('João', 'joao@example.com', 'Santos', '1985-08-20', 'Av. Principal, 456', 'Masculino', '+55 21 91234-5678', 'abcd1234');

INSERT INTO Usuarios (Nome, Email, Sobrenome, Nascimento, Endereco, Sexo, Telefone, Senha)
VALUES ('Ana', 'ana@example.com', 'Oliveira', '1992-03-10', 'Rua da Praia, 789', 'Feminino', '+55 81 92345-6789', 'senha456');

INSERT INTO Usuarios (Nome, Email, Sobrenome, Nascimento, Endereco, Sexo, Telefone, Senha)
VALUES ('Pedro', 'pedro@example.com', 'Silva', '1988-11-25', 'Avenida Central, 1010', 'Masculino', '+55 31 93456-7890', 'senha789');

INSERT INTO Usuarios (Nome, Email, Sobrenome, Nascimento, Endereco, Sexo, Telefone, Senha)
VALUES ('Carla', 'carla@example.com', 'Martins', '1995-09-05', 'Rua das Árvores, 222', 'Feminino', '+55 41 94567-8901', 'senha1011');

INSERT INTO Usuarios (Nome, Email, Sobrenome, Nascimento, Endereco, Sexo, Telefone, Senha)
VALUES ('José', 'jose@example.com', 'Ferreira', '1980-07-12', 'Travessa dos Sonhos, 333', 'Masculino', '+55 51 95678-9012', 'senha1213');

INSERT INTO Usuarios (Nome, Email, Sobrenome, Nascimento, Endereco, Sexo, Telefone, Senha)
VALUES ('Amanda', 'amanda@example.com', 'Ribeiro', '1998-01-30', 'Rua das Montanhas, 444', 'Feminino', '+55 61 96789-0123', 'senha1415');

INSERT INTO Usuarios (Nome, Email, Sobrenome, Nascimento, Endereco, Sexo, Telefone, Senha)
VALUES ('Lucas', 'lucas@example.com', 'Almeida', '1991-06-18', 'Avenida dos Lagos, 555', 'Masculino', '+55 71 97890-1234', 'senha1617');

INSERT INTO Usuarios (Nome, Email, Sobrenome, Nascimento, Endereco, Sexo, Telefone, Senha)
VALUES ('Fernanda', 'fernanda@example.com', 'Costa', '1987-04-22', 'Praça Central, 666', 'Feminino', '+55 81 98901-2345', 'senha1819');

INSERT INTO Usuarios (Nome, Email, Sobrenome, Nascimento, Endereco, Sexo, Telefone, Senha)
VALUES ('Rafael', 'rafael@example.com', 'Barbosa', '1993-12-07', 'Estrada da Colina, 777', 'Masculino', '+55 91 99012-3456', 'senha2021');


INSERT INTO Mensagens (DataCriacao,  Texto) VALUES ('2024-05-11 08:30:00', 'Olá João, como você está?');
INSERT INTO Mensagens (DataCriacao, Texto) VALUES ('2024-05-12 10:15:00', 'Oi Maria! Estou bem, obrigado. E você?');
INSERT INTO Mensagens (DataCriacao,  Texto) VALUES ('2024-05-13 14:20:00', 'Oi Maria, tudo bem?');
INSERT INTO Mensagens (DataCriacao, Texto) VALUES ('2024-05-14 16:45:00', 'Oi Ana, estou bem, obrigada. E você?');
INSERT INTO Mensagens (DataCriacao, Texto) VALUES ('2024-05-15 09:00:00', 'Olá Ana, estou bem sim. Como foi o seu dia?');
INSERT INTO Mensagens (DataCriacao, Texto) VALUES ('2024-05-16 11:30:00', 'Oi João, meu dia foi bom, obrigada por perguntar.');
INSERT INTO Mensagens (DataCriacao, Texto) VALUES ('2024-05-17 13:20:00','João, você viu a nova exposição no museu?');
INSERT INTO Mensagens (DataCriacao, Texto) VALUES ('2024-05-18 15:10:00', 'Sim, Maria! Eu fui lá ontem. É incrível!');
INSERT INTO Mensagens (DataCriacao, Texto) VALUES ('2024-05-19 17:00:00', 'Maria, podemos combinar de ir juntos?');
INSERT INTO Mensagens (DataCriacao, Texto) VALUES ('2024-05-20 19:30:00', 'Claro, Ana! Vamos marcar uma data.');


INSERT INTO Locacoes (DataReserva, CheckIn, CheckOut, NHospedes, Imposto, PrecoTotal, PrecoTotalComTaxas, CodigoPromocional, ValorDesconto, Confirmada)
VALUES ('2024-05-01', '2024-06-01', '2024-06-08', 4, 20.00, 1500.00, 1560.00, NULL, 0.00, '1');

INSERT INTO Locacoes (DataReserva, CheckIn, CheckOut, NHospedes, Imposto, PrecoTotal, PrecoTotalComTaxas, CodigoPromocional, ValorDesconto, Confirmada)
VALUES ('2024-05-02', '2024-06-10', '2024-06-20', 2, 15.00, 1200.00, 1245.00, NULL, 0.00, '1');

INSERT INTO Locacoes (DataReserva, CheckIn, CheckOut, NHospedes, Imposto, PrecoTotal, PrecoTotalComTaxas, CodigoPromocional, ValorDesconto, Confirmada)
VALUES ('2024-05-03', '2024-06-15', '2024-06-22', 3, 18.00, 1800.00, 1872.00, 'VERAO2024', 50.00, '0');

INSERT INTO Locacoes (DataReserva, CheckIn, CheckOut, NHospedes, Imposto, PrecoTotal, PrecoTotalComTaxas, CodigoPromocional, ValorDesconto, Confirmada)
VALUES ('2024-05-05', '2024-06-20', '2024-06-25', 2, 12.00, 700.00, 724.00, NULL, 0.00, '1');

INSERT INTO Locacoes (DataReserva, CheckIn, CheckOut, NHospedes, Imposto, PrecoTotal, PrecoTotalComTaxas, CodigoPromocional, ValorDesconto, Confirmada)
VALUES ('2024-05-06', '2024-07-01', '2024-07-10', 6, 25.00, 2800.00, 2875.00, 'VERAO2024', 75.00, '0');

INSERT INTO Locacoes (DataReserva, CheckIn, CheckOut, NHospedes, Imposto, PrecoTotal, PrecoTotalComTaxas, CodigoPromocional, ValorDesconto, Confirmada)
VALUES ('2024-05-08', '2024-07-15', '2024-07-25', 4, 20.00, 2200.00, 2270.00, NULL, 0.00, '1');

INSERT INTO Locacoes (DataReserva, CheckIn, CheckOut, NHospedes, Imposto, PrecoTotal, PrecoTotalComTaxas, CodigoPromocional, ValorDesconto, Confirmada)
VALUES ('2024-05-10', '2024-08-01', '2024-08-07', 5, 22.00, 3200.00, 3314.00, NULL, 0.00, '0');

INSERT INTO Locacoes (DataReserva, CheckIn, CheckOut, NHospedes, Imposto, PrecoTotal, PrecoTotalComTaxas, CodigoPromocional, ValorDesconto, Confirmada)
VALUES ('2024-05-12', '2024-08-20', '2024-08-27', 3, 18.00, 1800.00, 1872.00, 'FERIAS2024', 50.00, '1');

INSERT INTO Locacoes (DataReserva, CheckIn, CheckOut, NHospedes, Imposto, PrecoTotal, PrecoTotalComTaxas, CodigoPromocional, ValorDesconto, Confirmada)
VALUES ('2024-05-15', '2024-09-05', '2024-09-15', 4, 20.00, 2500.00, 2600.00, NULL, 0.00, '0');

INSERT INTO Locacoes (DataReserva, CheckIn, CheckOut, NHospedes, Imposto, PrecoTotal, PrecoTotalComTaxas, CodigoPromocional, ValorDesconto, Confirmada)
VALUES ('2024-05-18', '2024-09-10', '2024-09-20', 2, 15.00, 1400.00, 1455.00, 'VERAO2024', 55.00, '1');


INSERT INTO Anfitrioes (Conta, Roteamento, TipoConta) VALUES ('conta1', 'roteamento1', 'tipo1');
INSERT INTO Anfitrioes (Conta, Roteamento, TipoConta) VALUES ('conta2', 'roteamento2', 'tipo2');
INSERT INTO Anfitrioes (Conta, Roteamento, TipoConta) VALUES ('conta3', 'roteamento3', 'tipo3');
INSERT INTO Anfitrioes (Conta, Roteamento, TipoConta) VALUES ('conta4', 'roteamento4', 'tipo4');
INSERT INTO Anfitrioes (Conta, Roteamento, TipoConta) VALUES ('conta5', 'roteamento5', 'tipo5');
INSERT INTO Anfitrioes (Conta, Roteamento, TipoConta) VALUES ('conta6', 'roteamento6', 'tipo6');
INSERT INTO Anfitrioes (Conta, Roteamento, TipoConta) VALUES ('conta7', 'roteamento7', 'tipo7');
INSERT INTO Anfitrioes (Conta, Roteamento, TipoConta) VALUES ('conta8', 'roteamento8', 'tipo8');
INSERT INTO Anfitrioes (Conta, Roteamento, TipoConta) VALUES ('conta9', 'roteamento9', 'tipo9');
INSERT INTO Anfitrioes (Conta, Roteamento, TipoConta) VALUES ('conta10', 'roteamento10', 'tipo10');


INSERT INTO Pontos_de_Interesse (Endereco, NOME) VALUES ('Av. Paulista, 123','Parque das Flores');
INSERT INTO Pontos_de_Interesse (Endereco, NOME) VALUES ('Rua Augusta, 456', 'Museu de Arte Moderna');
INSERT INTO Pontos_de_Interesse (Endereco, NOME) VALUES ('Praça da Sé','Catedral Metropolitana de São Paulo');
INSERT INTO Pontos_de_Interesse (Endereco, NOME) VALUES ('Av. Rio Branco, 789', 'Biblioteca Nacional');
INSERT INTO Pontos_de_Interesse (Endereco, NOME) VALUES ('Rua Oscar Freire, 101', 'Galeria de Arte Contemporânea');
INSERT INTO Pontos_de_Interesse (Endereco, NOME) VALUES ('Av. Atlântica, 555', 'Praia de Copacabana');
INSERT INTO Pontos_de_Interesse (Endereco, NOME) VALUES ('Av. Beira Mar, 789', 'Praia de Ipanema');
INSERT INTO Pontos_de_Interesse (Endereco, NOME) VALUES ('Rua das Palmeiras, 14', 'Parque Nacional da Tijuca');
INSERT INTO Pontos_de_Interesse (Endereco, NOME) VALUES ('Av. das Flores, 999', 'Jardim Botânico');
INSERT INTO Pontos_de_Interesse (Endereco, NOME) VALUES ('Rua das Margaridas, 21',  'Museu Histórico Nacional');


INSERT INTO Disponibilidade (Datas) VALUES ('2024-05-15');
INSERT INTO Disponibilidade (Datas) VALUES ('2024-05-16');
INSERT INTO Disponibilidade (Datas) VALUES ('2024-05-17');
INSERT INTO Disponibilidade (Datas) VALUES ('2024-05-18');
INSERT INTO Disponibilidade (Datas) VALUES ('2024-05-19');
INSERT INTO Disponibilidade (Datas) VALUES ('2024-05-20');
INSERT INTO Disponibilidade (Datas) VALUES ('2024-05-21');
INSERT INTO Disponibilidade (Datas) VALUES ('2024-05-22');
INSERT INTO Disponibilidade (Datas) VALUES ('2024-05-23');
INSERT INTO Disponibilidade (Datas) VALUES ('2024-05-24');


INSERT INTO Fotos (Foto) VALUES ('\x53616d706c6520666f746f'); -- Foto 1
INSERT INTO Fotos (Foto) VALUES ('\x48656c6c6f20576f726c64'); -- Foto 2
INSERT INTO Fotos (Foto) VALUES ('\x5468697320697320616e6f7468657220666f746f'); -- Foto 3
INSERT INTO Fotos (Foto) VALUES ('\x5468697320697320616e6f7468657220666f75727468206578616d706c65'); -- Foto 4
INSERT INTO Fotos (Foto) VALUES ('\x48656c6c6f20576f726c642066726f6d2074686520736572766572'); -- Foto 5
INSERT INTO Fotos (Foto) VALUES ('\x5468697320697320612066696c652066726f6d2074686520736572766572'); -- Foto 6
INSERT INTO Fotos (Foto) VALUES ('\x48656c6c6f20576f726c642066726f6d20746865206569676874686965'); -- Foto 7
INSERT INTO Fotos (Foto) VALUES ('\x5468697320697320616e6f7468657220666f7572746820656967687468696572'); -- Foto 8
INSERT INTO Fotos (Foto) VALUES ('\x48656c6c6f20576f726c642066726f6d20746865206578616d706c652e'); -- Foto 9
INSERT INTO Fotos (Foto) VALUES ('\x5468697320697320616e6f7468657220666f75727468206578616d706c65'); -- Foto 10


INSERT INTO Quartos (NCamasSolteiro, NCamasCasal, Individual) VALUES (2, 3, '0');
INSERT INTO Quartos (NCamasSolteiro, NCamasCasal, Individual) VALUES (1, 2, '1');
INSERT INTO Quartos (NCamasSolteiro, NCamasCasal, Individual) VALUES (2, 0, '0');
INSERT INTO Quartos (NCamasSolteiro, NCamasCasal, Individual) VALUES (0, 4, '0');
INSERT INTO Quartos (NCamasSolteiro, NCamasCasal, Individual) VALUES (2, 1, '1');
INSERT INTO Quartos (NCamasSolteiro, NCamasCasal, Individual) VALUES (1, 1, '0');
INSERT INTO Quartos (NCamasSolteiro, NCamasCasal, Individual) VALUES (0, 1, '0');
INSERT INTO Quartos (NCamasSolteiro, NCamasCasal, Individual) VALUES (3, 2, '1');
INSERT INTO Quartos (NCamasSolteiro, NCamasCasal, Individual) VALUES (1, 3, '0');
INSERT INTO Quartos (NCamasSolteiro, NCamasCasal, Individual) VALUES (2, 3, '0');