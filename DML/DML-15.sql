-- Para cada time, selecione: nome, estado, saldo de gols, e a quantidade de jogos clássicos que jogou
-- por ano, considerando apenas anos em que o time jogou alguma partida (clássica ou não).

SELECT DISTINCT T.NOME, T.ESTADO, T.SALDO_GOLS, EXTRACT(YEAR FROM P.DATA), COUNT(*) AS QNT_JOGOS_CLASSICOS
FROM TIME T JOIN JOGA J
ON J.TIME1 = T.NOME OR J.TIME2 = T.NOME
JOIN PARTIDA P
ON J.TIME1 = P.TIME1 AND J.TIME2 = P.TIME2
WHERE J.CLASSICO = 'S'
GROUP BY T.NOME, T.ESTADO, T.SALDO_GOLS, EXTRACT(YEAR FROM P.DATA)
HAVING COUNT(*) > 0;