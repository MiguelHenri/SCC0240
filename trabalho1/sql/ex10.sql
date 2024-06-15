SELECT DISTINCT
    Locatarios.Nome, Locatarios.Nascimento 
FROM 
(
    SELECT 
        Usuarios.ID, Usuarios.Nome, Usuarios.Nascimento 
    FROM Usuarios, Locacoes
    WHERE Locacoes.IDLocatario = Usuarios.ID
) AS Locatarios 
WHERE Locatarios.Nascimento > ANY 
(
    SELECT 
        Usuarios.Nascimento 
    FROM Usuarios, Propriedades
    WHERE Usuarios.ID = Propriedades.idproprietario
);

SELECT 
    Locatarios.Nome, Locatarios.Nascimento 
FROM 
(
    SELECT 
        Usuarios.ID, Usuarios.Nome, Usuarios.Nascimento 
    FROM Usuarios, Locacoes
    WHERE Locacoes.IDlocatario = Usuarios.ID
) AS Locatarios WHERE
Locatarios.Nascimento > ALL
(
    SELECT 
        Usuarios.Nascimento 
    FROM Usuarios, Propriedades
    WHERE Usuarios.ID = Propriedades.IDproprietario
);