SELECT usuarios.nome, usuarios.id from usuarios,
(SELECT * from propriedades, locacoes where
propriedades.idproprietario=locacoes.idlocatario) as prop_loc where usuarios.id = prop_loc.idproprietario