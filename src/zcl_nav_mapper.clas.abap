CLASS zcl_nav_mapper DEFINITION
  PUBLIC
  FINAL
  CREATE PUBLIC .

  PUBLIC SECTION.

    INTERFACES if_oo_adt_classrun .
  PROTECTED SECTION.
  PRIVATE SECTION.
ENDCLASS.



CLASS zcl_nav_mapper IMPLEMENTATION.


  METHOD if_oo_adt_classrun~main.
        TYPES:BEGIN OF ty_old_map,
                id TYPE i,
                fname TYPE string,
                lname TYPE string,
                sal TYPE p length 8 DECIMALS 2,
              END OF ty_old_map.

         TYPES:BEGIN OF ty_new_map,
                employee_id TYPE i,
                first_name TYPE string,
                last_name TYPE string,
                monthly_salary TYPE p length 8 DECIMALS 2,
                currency TYPE c length 3,
              END OF ty_new_map.

            data lt_old TYPE TABLE of ty_old_map.
            DATA lt_new TYPE TABLE of ty_new_map.

          lt_old = VALUE #(
             ( id = 101 fname = 'Ram' lname = 'Kumar' sal = 30000 )
             ( id = 102 fname = 'Leo' lname = 'Das' sal = 5560 )
             ( id = 103 fname = 'Aman' lname = 'Khan' sal = -2000 )
             ( id = 104 fname = 'Seetha' lname = 'Krishnan' sal = 100000 )
              ).

           lt_new = VALUE #(
                 ( employee_id = 0
                    currency = 'USD' )
                  ).
              DATA lt_old_valid TYPE TABLE of ty_old_map.

                  LOOP AT lt_old INTO data(ls_old).
                    if ls_old-sal >= 0.
                        APPEND ls_old to lt_old_valid.
                   ENDIF.
                  ENDLOOP.

           lt_new = CORRESPONDING #(
                        BASE ( lt_new )
                        lt_old_valid
                        MAPPING
                            employee_id = id
                            first_name = fname
                            last_name = lname
                            monthly_salary = sal
                            ).

                 out->write( lt_new ).

  ENDMETHOD.
ENDCLASS.
