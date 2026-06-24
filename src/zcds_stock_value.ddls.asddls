@AbapCatalog.viewEnhancementCategory: [#NONE]
@AccessControl.authorizationCheck: #NOT_REQUIRED
@EndUserText.label: 'Material Stock Value'
@Metadata.ignorePropagatedAnnotations: true

define view entity ZCDS_STOCK_VALUE
  as select from zmat_master1 as M
    inner join zstock_items1 as S
      on M.material_id = S.material_id
{
  key M.material_id                     as MaterialID,
      M.name                            as MaterialName,
      M.unit                            as Unit,

      S.warehouseid                     as WarehouseID,
      S.quantity                        as Quantity,
      S.priceperunit                    as PricePerUnit,

      ( S.quantity * S.priceperunit )   as TotalStockValue
}
