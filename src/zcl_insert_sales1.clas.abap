CLASS zcl_insert_sales1 DEFINITION
  PUBLIC
  FINAL
  CREATE PUBLIC .

  PUBLIC SECTION.

    INTERFACES if_oo_adt_classrun .
  PROTECTED SECTION.
  PRIVATE SECTION.
ENDCLASS.



CLASS zcl_insert_sales1 IMPLEMENTATION.


  METHOD if_oo_adt_classrun~main.
            DATA lt_domestic TYPE TABLE OF zdomestic_sales.
    DATA lt_export   TYPE TABLE OF zexport_sales.

    lt_domestic = VALUE #(
      ( client = sy-mandt
        vbeln  = 'D001'
        endate = '20260601'
        amount = '5000.00' )

      ( client = sy-mandt
        vbeln  = 'D002'
        endate = '20260602'
        amount = '7000.00' )

       ( client = sy-mandt
         vbeln  = 'D003'
         endate = '20260603'
         amount = '9000.0' )
    ).
        INSERT zdomestic_sales FROM TABLE @lt_domestic.


    lt_export = VALUE #(
      ( client = sy-mandt
        vbeln  = 'E001'
        endate = '20260601'
        amount = '100.00' )

      ( client = sy-mandt
        vbeln  = 'E002'
        endate = '20260603'
        amount = '250.00' )

      ( client = sy-mandt
        vbeln  = 'E003'
        endate = '20260604'
        amount = '300.0' )
    ).

    INSERT zexport_sales   FROM TABLE @lt_export.

    out->write( 'Records Inserted Successfully' ).


  ENDMETHOD.
ENDCLASS.
