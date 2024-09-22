
--Listar registros por Sucursal
create procedure sp_ListarUsuario01
@idSucursal int
as
begin
	select * from Usuario
	where
	idSucursal = @idSucursal
	and estado=1
end

--Obtener Usuario por id
create procedure sp_ListarUsuario02
@idUsuario int
as
begin
	select * from Usuario
	where
	idUsuario = @idUsuario
end

--Eliminar Registro
create procedure sp_EliminarUsuario01
@idUsuario int
as
begin
	update Usuario
	set
	estado=0
	where
	idUsuario = @idUsuario
end

--Registrar nuevo registro
create procedure sp_InsertarUsuario01
@idSucursal int,
@correo varchar(50),
@nombreUsuario varchar(150),
@apellidoUsuario varchar(150),
@dni varchar(50),
@telefono varchar(50),
@password varchar(50),
@idRol int
as
begin
	insert into Usuario
	(idSucursal,correo,nombreUsuario,apellidoUsuario,dni,telefono,idRol,fechaCreacion,estado)
	values
	(@idSucursal,@correo,@nombreUsuario,@apellidoUsuario,@dni,@telefono,@password,@idRol,GETDATE(),1)
end

--Actualizar Registro
create procedure sp_ActualizarUsuario01
@idUsuario int,
@idSucursal int,
@correo varchar(50),
@nombreUsuario varchar(150),
@apellidoUsuario varchar(150),
@dni varchar(50),
@telefono varchar(50),
@password varchar(50),
@idRol int
as
begin
	update Usuario
	set
		idSucursal = @idSucursal,
		correo = @correo,
		nombreUsuario = @nombreUsuario,
		apellidoUsuario = @apellidoUsuario,
		dni = @dni,
		telefono = @telefono,
		password = @password,
		idRol = @idRol
	where
		idUsuario = @idUsuario
end

--Acceso de usuario
create procedure sp_ListarUsuario03
	@correo varchar(50),
	@password varchar(50)
as
begin
	select * from Usuario
	where
	correo = @correo
	and password = @password
	and estado=1
end

--Cambio Contrasena
create procedure sp_ActualizarUsuario02
	@idUsuario varchar(50),
	@password varchar(50)
as
begin
	update Usuario
	set
		password = @password
	where
		idUsuario = @idUsuario
end