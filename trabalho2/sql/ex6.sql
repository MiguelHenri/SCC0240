-- Mostrando 10 tuplas de Propriedade aleatoriamente
SELECT *
FROM Propriedades
ORDER BY RANDOM()
LIMIT 10;

-- Mostrando o número de propriedades por classe
SELECT
    CASE
        WHEN CasaInteira = TRUE THEN 'Casa Inteira'
        ELSE 'Quarto'
    END AS Classe,
    COUNT(*) AS Quantidade
FROM Propriedades
GROUP BY CasaInteira;

-- Mostrando número de localizações da base
-- obs.: isso possivelmente será alterado!
SELECT COUNT(*) AS NumeroLocalizacoes
FROM Localizacoes;
