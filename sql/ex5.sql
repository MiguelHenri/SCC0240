SELECT * FROM Propriedades;

SELECT CasaInteira, COUNT(*) FROM Propriedades
GROUP BY CasaInteira;

SELECT L.Cidade, COUNT(*) FROM Propriedades P
JOIN Localizacoes L ON P.IDLocalizacao = L.ID
GROUP BY L.Cidade;