-- Selecione a quantidade de jogos clássicos que ocorreram por mês no ano de 2018, considerando
-- apenas meses com pelo menos 1 partida. Ordene o resultado do mês com maior quantidade para o de
-- menor quantidade de jogos.

SELECT EXTRACT(MONTH FROM P.DATA), COUNT(*)
FROM JOGA J JOIN PARTIDA P
ON P.TIME1 = J.TIME1 AND P.TIME2 = J.TIME2 AND J.CLASSICO = 'S'
WHERE EXTRACT(YEAR FROM P.DATA) = 2018 
GROUP BY EXTRACT(MONTH FROM P.DATA)
HAVING COUNT(*) > 0;