CREATE PROCEDURE DELETALANCAMENTOS(
  PCODIGO INTEGER)
AS
BEGIN
  DELETE
  FROM LANCAMENTOS
  WHERE CODIGO = :PCODIGO;
  SUSPEND;
END
