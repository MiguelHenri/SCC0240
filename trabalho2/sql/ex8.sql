-- Consultando dados de anfitriões com pelo menos 3 propriedades
SELECT 
    U.ID, -- É necessário obter o ID, pois é PK
    U.Nome, 
    L.Cidade,
    COUNT(P.ID) AS QuantidadeDeImoveis
FROM 
    Usuarios U
JOIN 
    Localizacoes L ON U.IDLocalizacao = L.ID
JOIN 
    Propriedades P ON U.ID = P.IDAnfitriao
GROUP BY 
    U.ID -- Agrupando por anfitriões únicos (ID é PK)
HAVING 
    COUNT(P.ID) >= 3;

-- Drop do índice caso exista
DROP INDEX IF EXISTS indexAnfitriao;

-- Criação do índice na coluna IDAnfitriao
-- Como ela é usada no JOIN, para uma tabela com muitas propriedades o índice será efetivo.
CREATE INDEX indexAnfitriao ON Propriedades (IDAnfitriao);

-- Use o comando EXPLAIN ANALYZE para verificar os tempos de execução.