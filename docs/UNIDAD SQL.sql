--listar todos los registros por sucursal
create procedure sp_ListarUnidad01
@idSucursal int
as
begin
	select * from Unidad
	where
	idSucursal = @idSucursal
	and estado=1
end

--obtener registro por id
create procedure sp_ListarUnidad02
@idUnidad int
as
begin
	select * from Unidad
	where
	idUnidad = @idUnidad
end

--Eliminar Registro
create procedure sp_EliminarUnidad01
@idUnidad int
as
begin
	update Unidad
	set
		estado=0
	where
	idUnidad = @idUnidad
end

--Registrar  nuevo registro
create procedure sp_InsertarUnidad01
@idSucursal int,
@nombreUnidad varchar(100)
as
begin
	insert into Unidad
	(idSucursal,nombreUnidad,fechaCreacion,estado)
	values
	(@idSucursal,@nombreUnidad,GETDATE(),1)
end

--Actualizar Registro
create procedure sp_ActualizarUnidad01
@idUnidad int,
@idSucursal int,
@nombreUnidad varchar(100)
as
begin
	update Unidad
	set
		idSucursal = @idSucursal,
		nombreUnidad = @nombreUnidad
	where
		idUnidad = @idUnidad
end
