CLASS zcl_nav_epart DEFINITION
  PUBLIC
  FINAL
  CREATE PUBLIC .

  PUBLIC SECTION.

    INTERFACES if_oo_adt_classrun .
  PROTECTED SECTION.
  PRIVATE SECTION.
ENDCLASS.



CLASS zcl_nav_epart IMPLEMENTATION.


  METHOD if_oo_adt_classrun~main.
         DATA lt_dept TYPE TABLE OF znav_department.

    lt_dept = VALUE #(
      ( dept_id = '01' stud_dept = 'EEE'  )
      ( dept_id = '02' stud_dept = 'ECE'  )
      ( dept_id = '03' stud_dept = 'CSE'  )
      ( dept_id = '04' stud_dept = 'AIDS' )
    ).

    INSERT znav_department FROM TABLE @lt_dept.
        out->write( 'Inserted data successfully' ).
  ENDMETHOD.
ENDCLASS.
