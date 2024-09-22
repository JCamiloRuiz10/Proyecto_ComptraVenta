--listar todos los registros por sucursal
create procedure sp_ListarRol01
@idSucursal int
as
begin
	select * from Rol
	where
	idSucursal = @idSucursal
	and estado=1
end

--obtener registro por id
create procedure sp_ListarRol02
@idRol int
as
begin
	select * from Rol
	where
	idRol = @idRol
end

--Eliminar Registro
create procedure sp_EliminarRol01
@idRol int
as
begin
	update Rol
	set
		estado=0
	where
	idRol = @idRol
end

--Registrar  nuevo registro
create procedure sp_InsertarRol01
@idSucursal int,
@nombreRol varchar(100)
as
begin
	insert into Rol
	(idSucursal,nombreRol,fechaCreacion,estado)
	values
	(@idSucursal,@nombreRol,GETDATE(),1)
end

--Actualizar Registro
create procedure sp_ActualizarRol01
@idRol int,
@idSucursal int,
@nombreRol varchar(100)
as
begin
	update Rol
	set
		idSucursal = @idSucursal,
		nombreRol = @nombreRol
	where
		idRol = @idRol
end
