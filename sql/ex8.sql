SELECT Q.Nome, Q.Count FROM (
    SELECT U.Nome, COUNT(P.ID) as Count
    FROM Locacoes L
    JOIN Propriedades P ON L.IDPropriedade = P.ID
    JOIN Anfitrioes A ON P.IDProprietario = A.IDUsuario
    JOIN Usuarios U ON A.IDUsuario = U.ID
    GROUP BY U.Nome
) Q
WHERE Q.Count >= 3