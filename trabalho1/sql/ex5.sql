SELECT * FROM Propriedades;

SELECT CasaInteira, COUNT(*) AS Quantidade
FROM Propriedades
GROUP BY CasaInteira;

SELECT NQuartos, COUNT(*) AS Quantidade 
FROM Propriedades 
GROUP BY NQuartos;

SELECT NBanheiros, COUNT(*) AS Quantidade 
FROM Propriedades 
GROUP BY NBanheiros;

SELECT
    CASE
        WHEN PrecoDiaria BETWEEN 0 AND 200 THEN 'Classe C'
        WHEN PrecoDiaria BETWEEN 200 AND 400 THEN 'Classe B'
        ELSE 'Classe A'
    END AS ClassePreco,
    COUNT(*) AS NumeroPropriedades
FROM Propriedades P
GROUP BY ClassePreco
ORDER BY ClassePreco;

SELECT L.Cidade, COUNT(*) FROM Propriedades P
JOIN Localizacoes L ON P.IDLocalizacao = L.ID
GROUP BY L.Cidade;