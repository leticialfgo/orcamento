CREATE PROCEDURE ALTERADESCRIOBSERVACOES(
  PCODIGO INTEGER,
  PCODIGOTIPOCONTA INTEGER,
  PID CHAR(1) CHARACTER SET ISO8859_1,
  PDESCRICAO VARCHAR(150) CHARACTER SET ISO8859_1)
AS
BEGIN
  IF (NOT EXISTS(SELECT CODIGO FROM DESCRIOBSERVACOES
  WHERE CODIGOTIPOCONTA = :PCODIGOTIPOCONTA AND DESCRICAO = :PDESCRICAO
  AND CODIGO <> :PCODIGO)) THEN
  BEGIN
    UPDATE DESCRIOBSERVACOES
    SET CODIGOTIPOCONTA = :PCODIGOTIPOCONTA,
    ID = :PID, DESCRICAO = :PDESCRICAO
    WHERE CODIGO = :PCODIGO;
    SUSPEND;
  END
  ELSE
    EXCEPTION REGISTROJAEXISTE;
END