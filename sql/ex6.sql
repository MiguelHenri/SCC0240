SELECT 
    L.id as IDLocacao, L.idlocatario, L.idpropriedade,
    P.Nome,
    UA.ID as IDAnfitriao, UA.Nome as NomeAnfitriao,
    H.ID as IDUsuario, H.Nome as NomeUsuario, 
    (L.CheckOut-L.CheckIn) as TotalDias
FROM Locacoes L
JOIN Usuarios H ON H.ID = L.IDLocatario
JOIN Propriedades P ON L.IDPropriedade = P.ID
JOIN Anfitrioes A ON P.IDProprietario = A.ID
JOIN Usuarios UA ON A.IDUsuario = UA.ID
WHERE L.CheckIn > '2024-04-01' AND L.Confirmada = True;