
--Listar registros por Empresa
create procedure sp_ListarCliente01
@idEmpresa int
as
begin
	select * from Cliente
	where
	idEmpresa = @idEmpresa
	and estado=1
end

--Obtener Cliente por id
create procedure sp_ListarCliente02
@idCliente int
as
begin
	select * from Cliente
	where
	idCliente = @idCliente
end

--Eliminar Registro
create procedure sp_EliminarCliente01
@idCliente int
as
begin
	update Cliente
	set
	estado=0
	where
	idCliente = @idCliente
end

--Registrar nuevo registro
create procedure sp_InsertarCliente01
@idEmpresa int,
@nombreCliente varchar(150),
@ruc varchar(150),
@telefono varchar(50),
@direccion varchar(50),
@correo varchar(50)
as
begin
	insert into Cliente
	(idEmpresa,nombreCliente,ruc,telefono,direccion,correo,fechaCreacion,estado)
	values
	(@idEmpresa,@nombreCliente,@ruc,@telefono,@direccion,@correo,GETDATE(),1)
end

--Actualizar Registro
create procedure sp_ActualizarCliente01
@idCliente int,
@idEmpresa int,
@nombreCliente varchar(150),
@rucCliente int,
@telefono varchar(50),
@direccion varchar(50),
@correo varchar(50)
as
begin
	update Cliente
	set
		idEmpresa = @idEmpresa,
		nombreCliente = @nombreCliente,
		ruc = @rucCliente,
		telefono = @telefono,
		direccion = @direccion,
		correo = @correo
	where
		idCliente = @idCliente
end