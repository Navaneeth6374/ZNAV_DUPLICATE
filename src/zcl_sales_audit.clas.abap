CLASS zcl_sales_audit DEFINITION
  PUBLIC
  FINAL
  CREATE PUBLIC.

  PUBLIC SECTION.
    INTERFACES if_oo_adt_classrun.
ENDCLASS.

CLASS zcl_sales_audit IMPLEMENTATION.

  METHOD if_oo_adt_classrun~main.

    SELECT
      FROM zdomestic_sales
      FIELDS
        vbeln,
        endate,
        amount AS sales_amount,

        CASE
          WHEN vbeln IS NOT INITIAL
          THEN 'Local'
          ELSE 'International'
        END AS market_type

    UNION ALL

    SELECT
      FROM zexport_sales
      FIELDS
        vbeln,
        endate,
        amount AS sales_amount,

        CASE
          WHEN vbeln IS NOT INITIAL
          THEN 'International'
          ELSE 'Local'
        END AS market_type

    INTO TABLE @DATA(lt_final_audit).

    out->write( lt_final_audit ).

  ENDMETHOD.

ENDCLASS.
