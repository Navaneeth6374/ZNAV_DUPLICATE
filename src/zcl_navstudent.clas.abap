CLASS zcl_navstudent DEFINITION
  PUBLIC
  FINAL
  CREATE PUBLIC .

  PUBLIC SECTION.
    INTERFACES if_oo_adt_classrun.
ENDCLASS.



CLASS zcl_navstudent IMPLEMENTATION.

  METHOD if_oo_adt_classrun~main.

    UPDATE znav_student
      SET stud_status = 'FAIL'
      WHERE stud_id = '10003'.

    COMMIT WORK.

    out->write( 'RAJA status updated successfully' ).

  ENDMETHOD.

ENDCLASS.
