-- Criando a visão de propridades disponíveis em 2024
-- Guarda-se também as datas para evitar a necessidade de outros JOINs
CREATE OR REPLACE VIEW PropriedadesDisponiveis AS
SELECT 
    P.*,
    D.Data
FROM
    Propriedades P
JOIN 
    DatasDisponiveis D ON P.ID = D.IDPropriedade
WHERE
    D.Data BETWEEN '2024-01-01' AND '2024-12-31';

-- Consultando preço médio por mês na visão
SELECT
    EXTRACT(MONTH FROM P.Data) AS Mes,
    AVG(PrecoDiaria) AS PrecoMedio
FROM 
    PropriedadesDisponiveis P
GROUP BY 
    EXTRACT(MONTH FROM P.Data)
ORDER BY Mes;