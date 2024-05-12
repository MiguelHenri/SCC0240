SELECT DISTINCT * 
FROM Locacoes L
JOIN Usuarios U ON L.IDLocatario = U.ID
JOIN Anfitrioes A ON U.ID = Anfitrioes.IDUsuario;