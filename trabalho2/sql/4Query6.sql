-- Mostrando 10 tuplas de Propriedade aleatoriamente
SELECT *
FROM Propriedades
ORDER BY RANDOM()
LIMIT 10;

-- Mostrando o número de propriedades por classe
-- classe por mínimo de noites
SELECT
    CASE
        WHEN minnoites = 1 THEN '1'
        WHEN minnoites = 2 THEN '2'
        WHEN minnoites = 3 THEN '3'
        WHEN minnoites = 4 THEN '4'
        WHEN minnoites >= 5 THEN '5 ou mais'
    END AS MinNoites,
    COUNT(*) AS NumPropriedades
FROM
    Propriedades
GROUP BY
    CASE
        WHEN minnoites = 1 THEN '1'
        WHEN minnoites = 2 THEN '2'
        WHEN minnoites = 3 THEN '3'
        WHEN minnoites = 4 THEN '4'
        WHEN minnoites >= 5 THEN '5 ou mais'
    END
ORDER BY
    MinNoites;

-- Mostrando número de localizações da base
SELECT COUNT(*) AS NumeroLocalizacoes
FROM Localizacoes;
