CLASS zcl_nav_add DEFINITION
  PUBLIC
  FINAL
  CREATE PUBLIC .

  PUBLIC SECTION.

    INTERFACES if_oo_adt_classrun .
  PROTECTED SECTION.
  PRIVATE SECTION.
ENDCLASS.



CLASS zcl_nav_add IMPLEMENTATION.


  METHOD if_oo_adt_classrun~main.
    out->write( 'Navaneeth' ).
  ENDMETHOD.
ENDCLASS.
