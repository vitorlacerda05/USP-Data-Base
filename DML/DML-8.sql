-- Essa forma abaixo não é otimizada, mas não trás duplicatas:

--SELECT *
--FROM JOGA
--WHERE TIME1 IN (SELECT NOME FROM TIME WHERE ESTADO = 'SP')
--   OR TIME2 IN (SELECT NOME FROM TIME WHERE ESTADO = 'SP');

-- Como JOGA possui 2 chaves estrangeiras para um mesmo TIME.NOME, tem que usar OR no ON
-- Mas ao usar OR no ON, trás duplicatas, então usar DISTINCT

SELECT DISTINCT P.*
FROM PARTIDA P JOIN TIME T
ON P.TIME1 = T.NOME OR P.TIME2 = T.NOME
WHERE UPPER(T.ESTADO) = 'SP';