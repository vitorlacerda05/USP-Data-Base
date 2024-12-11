-- Selecione nomes dos times profissionais que jogaram clássicos e não marcaram gols em pelo menos
-- 2 dessas partidas clássicas.

SELECT DISTINCT T.NOME
FROM TIME T JOIN JOGA J
    ON J.TIME1 = T.NOME OR J.TIME2 = T.NOME
JOIN PARTIDA P
    ON P.TIME1 = J.TIME1 AND P.TIME2 = J.TIME2 
WHERE J.CLASSICO = 'S' 
    AND ((T.NOME = P.TIME1 AND P.PLACAR LIKE '0X%') 
        OR (T.NOME = P.TIME2 AND P.PLACAR LIKE '%X0'))
GROUP BY T.NOME
    HAVING COUNT(*) > 1;