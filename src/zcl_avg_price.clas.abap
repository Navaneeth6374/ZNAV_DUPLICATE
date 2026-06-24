CLASS zcl_avg_price DEFINITION
  PUBLIC
  FINAL
  CREATE PUBLIC.

  PUBLIC SECTION.
    INTERFACES if_oo_adt_classrun.
ENDCLASS.



CLASS zcl_avg_price IMPLEMENTATION.

  METHOD if_oo_adt_classrun~main.

    SELECT
      material_id,
      AVG( priceperunit ) AS avg_price
      FROM zstock_items1
      GROUP BY material_id
      INTO TABLE @DATA(lt_avg).

    out->write( lt_avg ).

  ENDMETHOD.

ENDCLASS.
