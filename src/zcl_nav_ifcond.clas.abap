CLASS zcl_nav_ifcond DEFINITION
  PUBLIC
  FINAL
  CREATE PUBLIC .

  PUBLIC SECTION.

    INTERFACES if_oo_adt_classrun .
  PROTECTED SECTION.
  PRIVATE SECTION.
ENDCLASS.



CLASS zcl_nav_ifcond IMPLEMENTATION.


  METHOD if_oo_adt_classrun~main.
        data mark TYPE i.
        mark = 75.
        if mark >= 50.
            out->write( 'Pass' ).
        else.
            out->write( 'Fail' ).
        ENDIF.


  ENDMETHOD.
ENDCLASS.
