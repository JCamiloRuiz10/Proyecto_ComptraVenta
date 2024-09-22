--listar todos los registros por Compania
create procedure sp_ListarEmpresa01
@idCompania int
as
begin
	select * from Empresa
	where
	idCompania = @idCompania
	and estado=1
end

--obtener registro por id
create procedure sp_ListarEmpresa02
@idEmpresa int
as
begin
	select * from Empresa
	where
	idEmpresa = @idEmpresa
end

--Eliminar Registro
create procedure sp_EliminarEmpresa01
@idEmpresa int
as
begin
	update Empresa
	set
		estado=0
	where
	idEmpresa = @idEmpresa
end

--Registrar  nuevo registro
create procedure sp_InsertarEmpresa01
@idCompania int,
@nombreEmpresa varchar(150),
@rucEmpresa varchar(150)
as
begin
	insert into Empresa
	(idCompania,nombreEmpresa,rucEmpresa,fechaCreacion,estado)
	values
	(@idCompania,@nombreEmpresa,@rucEmpresa,GETDATE(),1)
end

--Actualizar Registro
create procedure sp_ActualizarEmpresa01
@idEmpresa int,
@idCompania int,
@nombreEmpresa varchar(150),
@rucEmpresa varchar(150)
as
begin
	update Empresa
	set
		idCompania = @idCompania,
		nombreEmpresa = @nombreEmpresa,
		rucEmpresa = @rucEmpresa
	where
		idEmpresa = @idEmpresa
end
