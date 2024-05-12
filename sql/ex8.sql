SELECT A.Nome, Lo.Cidade, COUNT(P.IDPropriedade)
FROM Locacoes L
JOIN Anfitrioes A ON L.IDLocatario = Anfitrioes.ID
JOIN Usuarios U ON A.IDUsuario = Usuario.ID
JOIN Localizacoes Lo ON Usuario.IDLocalizacao = Lo.ID
JOIN Propriedades P ON L.IDPropriedade = P.ID
WHERE COUNT(*) > 2
GROUP BY A.ID;