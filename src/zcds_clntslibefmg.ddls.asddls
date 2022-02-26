@AbapCatalog.sqlViewName: 'ZCDSV_CLNLIBEFMG'
@AbapCatalog.compiler.compareFilter: true
@AbapCatalog.preserveKey: true
@AccessControl.authorizationCheck: #NOT_REQUIRED
@EndUserText.label: 'CDS Clientes Libros'
define view ZCDS_CLNTSLIBEFMG
  as select from ztb_clntslibefmg
{
  key id_libro,
      count(distinct id_cliente) as VENTAS
}
group by
  id_libro
