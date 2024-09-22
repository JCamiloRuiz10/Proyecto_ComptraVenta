--listar todos los registros por sucursal
create procedure sp_ListarCompania01
as
begin
	select * from Compania
	where
	estado=1
end

--obtener registro por id
create procedure sp_ListarCompania02
@idCompania int
as
begin
	select * from Compania
	where
	idCompania = @idCompania
end

--Eliminar Registro
create procedure sp_EliminarCompania01
@idCompania int
as
begin
	update Compania
	set
		estado=0
	where
	idCompania = @idCompania
end

--Registrar  nuevo registro
create procedure sp_InsertarCompania01
@nombreCompania varchar(100)
as
begin
	insert into Compania
	(nombreCompania,fechaCreacion,estado)
	values
	(@nombreCompania,GETDATE(),1)
end

--Actualizar Registro
create procedure sp_ActualizarCompania01
@idCompania int,
@nombreCompania varchar(100)
as
begin
	update Compania
	set
		nombreCompania = @nombreCompania
	where
		idCompania = @idCompania
end
