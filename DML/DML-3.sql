SELECT P.TIME1, P.TIME2, P.DATA, P.PLACAR, J.CLASSICO
FROM PARTIDA P JOIN JOGA J
ON P.TIME1 = J.TIME1 AND UPPER(P.LOCAL) = 'SANTOS';