CLASS zcl_nav_insert DEFINITION
  PUBLIC
  FINAL
  CREATE PUBLIC .

  PUBLIC SECTION.

    INTERFACES if_oo_adt_classrun .
  PROTECTED SECTION.
  PRIVATE SECTION.
ENDCLASS.



CLASS zcl_nav_insert IMPLEMENTATION.


  METHOD if_oo_adt_classrun~main.
      DATA: lt_master TYPE TABLE OF zmat_master1,
        lt_stock  TYPE TABLE OF zstock_items1.

  lt_master = VALUE #(
    ( material_id = '001' name = 'Laptop'   unit = 'EA' )
    ( material_id = '002' name = 'Mouse'    unit = 'EA' )
    ( material_id = '003' name = 'Keyboard' unit = 'EA' )
  ).

  INSERT zmat_master1 FROM TABLE @lt_master.

  lt_stock = VALUE #(
    ( material_id = '001' warehouseid = '1' quantity = 50  priceperunit = 50000 )
    ( material_id = '001' warehouseid = '2' quantity = 60  priceperunit = 51000 )
    ( material_id = '002' warehouseid = '1' quantity = 80  priceperunit = 500 )
    ( material_id = '002' warehouseid = '2' quantity = 40  priceperunit = 550 )
    ( material_id = '003' warehouseid = '1' quantity = 120 priceperunit = 1500 )
  ).

  INSERT zstock_items1 FROM TABLE @lt_stock.

  out->write( 'Data Inserted Successfully' ).

  ENDMETHOD.
ENDCLASS.
