SELECT DISTINCT T.NOME
FROM TIME T JOIN PARTIDA P
ON P.TIME1 = T.NOME OR P.TIME2 = T.NOME
WHERE NOT(UPPER(P.LOCAL) IN ('SAO CARLOS', 'BELO HORIZONTE'));