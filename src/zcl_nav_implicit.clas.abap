CLASS zcl_nav_implicit DEFINITION
  PUBLIC
  FINAL
  CREATE PUBLIC .

  PUBLIC SECTION.

    INTERFACES if_oo_adt_classrun .
  PROTECTED SECTION.
  PRIVATE SECTION.
ENDCLASS.



CLASS zcl_nav_implicit IMPLEMENTATION.


  METHOD if_oo_adt_classrun~main.
        data my_int type i.
        data my_pack type p length 8 decimals 2.
        DATA my_char4 type c length 4.
        data my_string TYPE string.

        my_int = '1234'.
        my_pack = '-273.15'.
        my_string = 'Hello'.
        out->write( my_int ).
        out->write( my_string ).
  ENDMETHOD.
ENDCLASS.
