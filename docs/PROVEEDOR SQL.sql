
--Listar registros por Empresa
create procedure sp_ListarProveedor01
@idEmpresa int
as
begin
	select * from Proveedor
	where
	idEmpresa = @idEmpresa
	and estado=1
end

--Obtener Proveedor por id
create procedure sp_ListarProveedor02
@idProveedor int
as
begin
	select * from Proveedor
	where
	idProveedor = @idProveedor
end

--Eliminar Registro
create procedure sp_EliminarProveedor01
@idProveedor int
as
begin
	update Proveedor
	set
	estado=0
	where
	idProveedor = @idProveedor
end

--Registrar nuevo registro
alter procedure sp_InsertarProveedor01
@idEmpresa int,
@nombreProveedor varchar(150),
@rucProveedor int,
@telefono varchar(50),
@direccion varchar(50),
@correo varchar(50)
as
begin
	insert into Proveedor
	(idEmpresa,nombreProveedor,rucProveedor,telefono,direccion,correo,fechaCreacion,estado)
	values
	(@idEmpresa,@nombreProveedor,@rucProveedor,@telefono,@direccion,@correo,GETDATE(),1)
end

--Actualizar Registro
alter procedure sp_ActualizarProveedor01
@idProveedor int,
@idEmpresa int,
@nombreProveedor varchar(150),
@rucProveedor int,
@telefono varchar(50),
@direccion varchar(50),
@correo varchar(50)
as
begin
	update Proveedor
	set
		idEmpresa = @idEmpresa,
		nombreProveedor = @nombreProveedor,
		rucProveedor = @rucProveedor,
		telefono = @telefono,
		direccion = @direccion,
		correo = @correo
	where
		idProveedor = @idProveedor
end