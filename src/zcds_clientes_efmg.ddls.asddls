@AbapCatalog.sqlViewName: 'ZCDSV_CLIENTES'
@AbapCatalog.compiler.compareFilter: true
@AbapCatalog.preserveKey: true
@AccessControl.authorizationCheck: #NOT_REQUIRED
@EndUserText.label: 'Clientes'
@Metadata.allowExtensions: true
@UI.headerInfo : {    typeName :  'Cliente',
                         title :  { type : #STANDARD,
                                   value : 'NombreCompleto' },
                   description : {  type : #STANDARD,
                                   value : 'IdCliente'},
                      imageUrl : 'Imagen' }
define view ZCDS_CLIENTES_EFMG
  as select from ztb_clientesefmg as clientes
    inner join   ztb_clntslibefmg as cltslibs on cltslibs.id_cliente = clientes.id_cliente
{
  key cltslibs.id_libro    as IdLibro,
  key clientes.id_cliente  as IdCliente,
  key clientes.tipo_acceso as Acceso,
      clientes.nombre      as Nombre,
      clientes.apellidos   as Apellidos,
      clientes.email       as email,
      clientes.url         as Imagen,
      concat_with_space(clientes.nombre, clientes.apellidos, 1) as NombreCompleto
}
