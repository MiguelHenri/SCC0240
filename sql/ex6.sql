SELECT L.ID, P.ID, L.IDLocatario, U.Nome, P.IDProprietario, A.Nome, (L.CheckOut-L.CheckIn), P.PrecoDiaria 
FROM Locacoes L
JOIN Usuarios U ON L.IDLocatario = U.ID
JOIN Propriedades P ON L.IDPropriedade = P.ID
JOIN Anfitrioes A ON P.IDProprietario = A.ID
WHERE L.CheckIn > '2024-04-01';