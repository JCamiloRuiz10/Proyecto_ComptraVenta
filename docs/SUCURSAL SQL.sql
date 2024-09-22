
--Listar registros por Empresa
create procedure sp_ListarSucursal01
@idEmpresa int
as
begin
	select * from Sucursal
	where
	idEmpresa = @idEmpresa
	and estado=1
end

--Obtener Sucursal por id
create procedure sp_ListarSucursal02
@idSucursal int
as
begin
	select * from Sucursal
	where
	idSucursal = @idSucursal
end

--Eliminar Registro
create procedure sp_EliminarSucursal01
@idSucursal int
as
begin
	update Sucursal
	set
	estado=0
	where
	idSucursal = @idSucursal
end

--Registrar nuevo registro
create procedure sp_InsertarSucursal01
@idEmpresa int,
@nombreSucursal varchar(150)
as
begin
	insert into Sucursal
	(idEmpresa,nombreSucursal,fechaCreacion,estado)
	values
	(@idEmpresa,@nombreSucursal,GETDATE(),1)
end

--Actualizar Registro
create procedure sp_ActualizarSucursal01
@idSucursal int,
@idEmpresa int,
@nombreSucursal varchar(150)
as
begin
	update Sucursal
	set
		idEmpresa = @idEmpresa,
		nombreSucursal = @nombreSucursal
	where
		idSucursal = @idSucursal
end