-- ================================================
-- Template generated from Template Explorer using:
-- Create Procedure (New Menu).SQL
--
-- Use the Specify Values for Template Parameters 
-- command (Ctrl-Shift-M) to fill in the parameter 
-- values below.
--
-- This block of comments will not be included in
-- the definition of the procedure.
-- ================================================
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
-- =============================================
-- Author:		<Jorge Sandoval>
-- Create date: <14/02/2025>
-- Description:	<Consume la tabla de users>
-- =============================================
CREATE PROCEDURE GetUsers 
	-- Add the parameters for the stored procedure here
	@Username NVARCHAR(100),
	@Password NVARCHAR(150)
AS
BEGIN
	-- SET NOCOUNT ON added to prevent extra result sets from
	-- interfering with SELECT statements.
	SET NOCOUNT ON;


	SELECT
	u.user_ID,
	u.name,
	u.lastname,
	u.username,
	u.password,
	t.type_id,
	t.name_type AS userType
	FROM users u WITH (NOLOCK)
	INNER JOIN type_users t ON u.type_id = t.type_id
	WHERE u.username = @Username AND u.password = @Password
END
GO
