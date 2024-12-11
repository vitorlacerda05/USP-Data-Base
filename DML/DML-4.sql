SELECT J.CPF, J.NOME, J.DATA_NASC, T.NOME
FROM JOGADOR J JOIN TIME T
ON J.TIME = T.NOME
WHERE UPPER(T.ESTADO) = 'SP';