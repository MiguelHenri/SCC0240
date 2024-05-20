SELECT 
    EXTRACT(MONTH FROM L.CheckIn) AS Mes,
    AVG(P.PrecoDiaria) AS MediaDiaria
FROM Locacoes L
JOIN Propriedades P ON L.IDPropriedade = P.ID
GROUP BY EXTRACT(MONTH FROM L.CheckIn)
ORDER BY Mes;