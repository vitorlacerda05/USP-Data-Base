SELECT U.COR_PRINCIPAL
FROM TIME T JOIN UNIFORME U
ON U.TIME = T.NOME
WHERE T.ESTADO = 'MG' AND UPPER(T.TIPO) = 'PROFISSIONAL';