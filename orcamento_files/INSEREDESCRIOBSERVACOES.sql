CREATE PROCEDURE INSEREDESCRIOBSERVACOES(
  PCODIGOTIPOCONTA INTEGER,
  PID CHAR(1) CHARACTER SET ISO8859_1,
  PDESCRICAO VARCHAR(150) CHARACTER SET ISO8859_1)
AS
BEGIN
  INSERT INTO DESCRIOBSERVACOES (CODIGOTIPOCONTA, ID, DESCRICAO)
  VALUES (:PCODIGOTIPOCONTA, :PID, :PDESCRICAO);
  SUSPEND;
END
