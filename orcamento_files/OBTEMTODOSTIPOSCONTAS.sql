CREATE PROCEDURE OBTEMTODOSTIPOSCONTAS
RETURNS(
  RCODIGO INTEGER,
  RDESCRICAO VARCHAR(150) CHARACTER SET ISO8859_1,
  RFICHAORCAMENTARIA CHAR(1) CHARACTER SET ISO8859_1,
  RBALANCETE CHAR(1) CHARACTER SET ISO8859_1,
  RUSUARIO CHAR(10) CHARACTER SET ISO8859_1,
  RDHMODIFICACAO TIMESTAMP)
AS
BEGIN
  FOR SELECT CODIGO, DESCRICAO, FICHAORCAMENTARIA, BALANCETE, USUARIO,
  DHMODIFICACAO
  FROM TIPOSCONTAS
  INTO :RCODIGO, :RDESCRICAO, :RFICHAORCAMENTARIA, :RBALANCETE, :RUSUARIO,
  :RDHMODIFICACAO
  DO
  SUSPEND;
END