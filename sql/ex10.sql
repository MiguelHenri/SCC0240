SELECT locatarios.id, locatarios.nascimento from (select usuarios.id, usuarios.nascimento from usuarios, locacoes
where locacoes.idlocatario = usuarios.id) as locatarios WHERE
locatarios.nascimento > ANY 
(SELECT usuarios.nascimento from usuarios, propriedades
where usuarios.id = propriedades.idproprietario);

SELECT locatarios.id, locatarios.nascimento from (select usuarios.id, usuarios.nascimento from usuarios, locacoes
where locacoes.idlocatario = usuarios.id) as locatarios WHERE
locatarios.nascimento > ALL
(SELECT usuarios.nascimento from usuarios, propriedades
where usuarios.id = propriedades.idproprietario);