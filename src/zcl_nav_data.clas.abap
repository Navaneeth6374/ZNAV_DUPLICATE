CLASS zcl_nav_data DEFINITION
  PUBLIC
  FINAL
  CREATE PUBLIC .

  PUBLIC SECTION.

    INTERFACES if_oo_adt_classrun .
  PROTECTED SECTION.
  PRIVATE SECTION.
ENDCLASS.



CLASS zcl_nav_data IMPLEMENTATION.


  METHOD if_oo_adt_classrun~main.
        data var type string.
            var = 456.
        out->write( var ).
  ENDMETHOD.
ENDCLASS.
