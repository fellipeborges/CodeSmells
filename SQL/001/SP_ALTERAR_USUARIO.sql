/*
	Receba o ID de um usu�rio e atualize suas informa��es conforme os demais par�metros.
	O campo "DataUltimaAtualizacao" deve ser preenchido com a data/hora atuais.
	N�o � necess�rio verificar se o usu�rio existe antes de fazer o UPDATE.
*/

ALTER PROC [dbo].[SP_ALTERAR_USUARIO]
    @Id				BIGINT,
	@Nome			VARCHAR(100),
	@Email			VARCHAR(100),
	@DataNascimento	DATE
AS
BEGIN
	
	UPDATE Usuario SET
		Nome = @Nome,
		Email = @Email,
		DataNascimento = @DataNascimento,
		DataUltimaAtualizacao = GETDATE()
	WHERE @Id = @Id
END