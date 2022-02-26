@AbapCatalog.sqlViewName: 'ZCDSV_CATEG_EFMG'
@AbapCatalog.compiler.compareFilter: true
@AbapCatalog.preserveKey: true
@AccessControl.authorizationCheck: #NOT_REQUIRED
@EndUserText.label: 'Categorías'
define view ZCDS_CATEGORIAS_EFMG as select from ztb_catego_efmg {
    key bi_categ as Categoria,
    descripcion as Descripcion
}
