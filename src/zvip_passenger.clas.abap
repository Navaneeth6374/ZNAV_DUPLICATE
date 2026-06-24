CLASS zvip_passenger DEFINITION
  PUBLIC
  FINAL
  CREATE PUBLIC .

  PUBLIC SECTION.

    INTERFACES if_oo_adt_classrun .
  PROTECTED SECTION.
  PRIVATE SECTION.
ENDCLASS.



CLASS zvip_passenger IMPLEMENTATION.


  METHOD if_oo_adt_classrun~main.
    TYPES:BEGIN OF ty_passenger,
            name             TYPE string,
            miles_flown      TYPE i,
            membership_level TYPE string,
          END OF ty_passenger.
    DATA lt_passenger TYPE TABLE OF ty_passenger.

    lt_passenger = VALUE #(
        ( name = 'John'   miles_flown = 60000 membership_level = 'A' )
        ( name = 'David'  miles_flown = 25000 membership_level = 'B' )
        ( name = 'Peter'  miles_flown = 5000  membership_level = 'C' )
        ( name = 'Sam'    miles_flown = 800   membership_level = 'D' )
            ).

    TYPES: BEGIN OF ty_vip,
             name             TYPE string,
             miles_flown      TYPE i,
             membership_level TYPE string,
             reward_status    TYPE string,
           END OF ty_vip.

    DATA lt_vip_list TYPE TABLE OF ty_vip.

    lt_vip_list = VALUE #(
         FOR ls_passenger IN lt_passenger
                 WHERE ( miles_flown > 1000 )
                         (
                             name             = ls_passenger-name
                             miles_flown      = ls_passenger-miles_flown
                             membership_level = ls_passenger-membership_level

                                 reward_status = COND string(
                         WHEN ls_passenger-miles_flown > 50000 THEN 'PLATINUM'
                         WHEN ls_passenger-miles_flown > 10000 THEN 'GOLD'
                      ELSE 'SILVER'
                             )
                         )
                      ).

    out->write( lt_vip_list ).

      ENDMETHOD.
ENDCLASS.
