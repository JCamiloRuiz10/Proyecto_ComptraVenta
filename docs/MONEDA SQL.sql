--listar todos los registros por sucursal
create procedure sp_ListarMoneda01
@idSucursal int
as
begin
	select * from Moneda
	where
	idSucursal = @idSucursal
	and estado=1
end

--obtener registro por id
create procedure sp_ListarMoneda02
@idMoneda int
as
begin
	select * from Moneda
	where
	idMoneda = @idMoneda
end

--Eliminar Registro
create procedure sp_EliminarMoneda01
@idMoneda int
as
begin
	update Moneda
	set
		estado=0
	where
	idMoneda = @idMoneda
end

--Registrar  nuevo registro
create procedure sp_InsertarMoneda01
@idSucursal int,
@nombreMoneda varchar(100)
as
begin
	insert into Moneda
	(idSucursal,nombreMoneda,fechaCreacion,estado)
	values
	(@idSucursal,@nombreMoneda,GETDATE(),1)
end

--Actualizar Registro
create procedure sp_ActualizarMoneda01
@idMoneda int,
@idSucursal int,
@nombreMoneda varchar(100)
as
begin
	update Moneda
	set
		idSucursal = @idSucursal,
		nombreMoneda = @nombreMoneda
	where
		idMoneda = @idMoneda
end
