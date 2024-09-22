--Listar registros por sucursal
create procedure sp_ListarProducto01
@idSucursal int
as
begin
	select * from Producto
	where
	idSucursal = @idSucursal
	and estado=1
end

--Obtener producto por id
create procedure sp_ListarProducto02
@idProducto int
as
begin
	select * from Producto
	where
	idProducto = @idProducto
end

--Eliminar Registro
create procedure sp_EliminarProducto01
@idProducto int
as
begin
	update Producto
	set
	estado=0
	where
	idProducto = @idProducto
end

--Registrar nuevo registro
create procedure sp_InsertarProducto01
@idSucursal int,
@idCategoria int,
@nombreProducto varchar(100),
@descripcion varchar(200),
@idUnidad int,
@idMoneda int,
@PrecioCompra numeric(18,2),
@PrecioVenta numeric(18,2),
@stock int,
@fechaVencimiento date,
@imagen varchar(MAX)
as
begin
	insert into Producto
	(idSucursal,idCategoria,nombreProducto,descripcion,idUnidad,idMoneda,PrecioCompra,PrecioVenta,stock,fechaVencimiento,imagen,fechaCreacion,estado)
	values
	(@idSucursal,@idCategoria,@nombreProducto,@descripcion,@idUnidad,@idMoneda,@PrecioCompra,@PrecioVenta,@stock,@fechaVencimiento,@imagen,GETDATE(),1)
end

--Actualizar Registro
create procedure sp_ActualizarProducto01
@idProducto int,
@idSucursal int,
@idCategoria int,
@nombreProducto varchar(100),
@descripcion varchar(200),
@idUnidad int,
@idMoneda int,
@PrecioCompra numeric(18,2),
@PrecioVenta numeric(18,2),
@stock int,
@fechaVencimiento date,
@imagen varchar(MAX)
as
begin
	update Producto
	set
		idSucursal = @idSucursal,
		idCategoria = @idCategoria,
		nombreProducto = @nombreProducto,
		descripcion = @descripcion,
		idUnidad = @idUnidad,
		idMoneda = @idMoneda,
		PrecioCompra = @PrecioCompra,
		PrecioVenta = @PrecioVenta,
		stock = @stock,
		fechaVencimiento = @fechaVencimiento,
		imagen = @imagen
	where
		idProducto = @idProducto
end