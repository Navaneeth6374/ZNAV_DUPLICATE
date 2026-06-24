CLASS zcl_stock_report DEFINITION
  PUBLIC
  FINAL
  CREATE PUBLIC.

  PUBLIC SECTION.
    INTERFACES if_oo_adt_classrun.
ENDCLASS.



CLASS zcl_stock_report IMPLEMENTATION.

  METHOD if_oo_adt_classrun~main.

    SELECT
      material_id,
      SUM( quantity ) AS total_qty
      FROM zstock_items1
      GROUP BY material_id
      HAVING SUM( quantity ) > 100
      INTO TABLE @DATA(lt_result).

    out->write( lt_result ).

  ENDMETHOD.

ENDCLASS.
