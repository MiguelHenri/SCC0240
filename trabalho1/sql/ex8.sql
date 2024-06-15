SELECT Q.NomeAnfitriao, Q.Cidade, COUNT(Q.APropriedades) AS NúmeroPropriedades FROM (
    SELECT 
        U.Nome AS NomeAnfitriao, 
        PUsuario.Nome AS APropriedades,
        Loc.Cidade, COUNT(L.ID) AS NLocacoes
    FROM 
        Locacoes L
    JOIN Propriedades PLocacao ON L.IDPropriedade = PLocacao.ID
    JOIN Anfitrioes A ON PLocacao.IDProprietario = A.IDUsuario
    JOIN Usuarios U ON A.IDUsuario = U.ID
    JOIN Propriedades PUsuario ON U.ID = PUsuario.IDProprietario
    JOIN Localizacoes Loc ON Loc.ID = U.ID
    GROUP BY NomeAnfitriao, APropriedades, Cidade
) Q
WHERE Q.NLocacoes >= 3
GROUP BY Q.NomeAnfitriao, Q.Cidade