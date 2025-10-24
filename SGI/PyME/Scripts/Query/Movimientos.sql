	USE SGI
	GO
	
	-- Entrada
	DECLARE @pid_producto uniqueidentifier,
			@pid_usuario uniqueidentifier,
			@pid_tipo_movimiento uniqueidentifier,
			@pcantidad int

	SET @pid_producto = '72e895fc-afaf-f011-b43d-0a62228132c4'
	SET @pid_usuario = 'C5543CE8-ABAF-F011-B43D-0A62228132C4'
	SET @pid_tipo_movimiento = '51245C17-9DAF-F011-B43D-0A62228132C4' 
	SET @pcantidad = 10

    EXEC dbo.registrar_movimiento @pid_producto, @pid_usuario, @pid_tipo_movimiento, @pcantidad
	GO

	-- Salida
	DECLARE @pid_producto uniqueidentifier,
			@pid_usuario uniqueidentifier,
			@pid_tipo_movimiento uniqueidentifier,
			@pcantidad int

	SET @pid_producto = '72e895fc-afaf-f011-b43d-0a62228132c4'
	SET @pid_usuario = 'C5543CE8-ABAF-F011-B43D-0A62228132C4'
	SET @pid_tipo_movimiento = '52245C17-9DAF-F011-B43D-0A62228132C4' 
	SET @pcantidad = 1

    EXEC dbo.registrar_movimiento @pid_producto, @pid_usuario, @pid_tipo_movimiento, @pcantidad