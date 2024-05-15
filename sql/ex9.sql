SELECT DISTINCT
    U.id, U.Nome 
FROM Usuarios U,
(
    SELECT * FROM Propriedades P, Locacoes L
    WHERE P.IDProprietario = L.IDLocatario
) AS prop_loc 
WHERE U.id = prop_loc.IDProprietario