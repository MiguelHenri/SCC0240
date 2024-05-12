SELECT AVG(P.PrecoDiaria) AS MediaDiaria, EXTRACT(MONTH FROM L.DataReserva) AS Mes
FROM Locacoes L
JOIN Propriedades P ON L.IDPropriedade = P.ID
GROUP BY EXTRACT(MONTH FROM L.DataReserva)
ORDER BY MES;