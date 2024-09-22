--listar todos los registros por sucursal
alter procedure sp_ListarCategoria01
@idSucursal int
as
begin
	select * from Categoria
	where
	idSucursal = @idSucursal
	and estado=1
end

--obtener registro por id
create procedure sp_ListarCategoria02
@idCategoria int
as
begin
	select * from Categoria
	where
	idCategoria = @idCategoria
end

--Eliminar Registro
create procedure sp_EliminarCategoria01
@idCategoria int
as
begin
	update Categoria
	set
		estado=0
	where
	idCategoria = @idCategoria
end

--Registrar  nuevo registro
create procedure sp_InsertarCategoria01
@idSucursal int,
@nombreCategoria varchar(100)
as
begin
	insert into Categoria
	(idSucursal,nombreCategoria,fechaCreacion,estado)
	values
	(@idSucursal,@nombreCategoria,GETDATE(),1)
end

--Actualizar Registro
create procedure sp_ActualizarCategoria01
@idCategoria int,
@idSucursal int,
@nombreCategoria varchar(100)
as
begin
	update Categoria
	set
		idSucursal = @idSucursal,
		nombreCategoria = @nombreCategoria
	where
		idCategoria = @idCategoria
end
