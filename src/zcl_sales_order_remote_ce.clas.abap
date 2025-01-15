CLASS zcl_sales_order_remote_ce DEFINITION
  PUBLIC
  FINAL
  CREATE PUBLIC .

  PUBLIC SECTION.

    INTERFACES if_rap_query_provider .
  PROTECTED SECTION.
  PRIVATE SECTION.
    METHODS set_paging
      IMPORTING
        io_request        TYPE REF TO if_rap_query_request
        io_remote_request TYPE REF TO /iwbep/if_cp_request_read_list.
    METHODS set_filters
      IMPORTING
        io_request        TYPE REF TO if_rap_query_request
        io_remote_request TYPE REF TO /iwbep/if_cp_request_read_list.
ENDCLASS.



CLASS zcl_sales_order_remote_ce IMPLEMENTATION.


  METHOD if_rap_query_provider~select.
    DATA: lt_business_data TYPE TABLE OF zsocds_scm=>tys_sepm_i_sales_order_etype,
          lt_response_data TYPE TABLE OF zc_sales_orders_remote,
          lo_http_client   TYPE REF TO if_web_http_client,
          lo_client_proxy  TYPE REF TO /iwbep/if_cp_client_proxy,
          lo_request       TYPE REF TO /iwbep/if_cp_request_read_list,
          lo_response      TYPE REF TO /iwbep/if_cp_response_read_lst,
          ls_entity_key    TYPE zsocds_scm=>tys_sepm_i_sales_order_etype,
          ls_business_data TYPE zsocds_scm=>tys_sepm_i_sales_order_etype.


    TRY.
        DATA(lo_destination) = cl_http_destination_provider=>create_by_url( i_url = 'https://sapes5.sapdevcenter.com' ).
        lo_http_client = cl_web_http_client_manager=>create_by_http_destination( lo_destination ).

        lo_client_proxy = /iwbep/cl_cp_factory_remote=>create_v2_remote_proxy(
          EXPORTING
             is_proxy_model_key       = VALUE #( repository_id       = 'DEFAULT'
                                                 proxy_model_id      = 'ZSOCDS_SCM'
                                                 proxy_model_version = '0001' )
            io_http_client             = lo_http_client
            iv_relative_service_root   = '/sap/opu/odata/sap/ZSOCDS_SRV/' ).

        ASSERT lo_http_client IS BOUND.


        DATA(lo_entity_set) = lo_client_proxy->create_resource_for_entity_set( 'SEPM_I_SALES_ORDER_E' ).


        IF io_request->get_paging(  )->get_page_size( ) <= 1.

          DATA(lt_filter) = io_request->get_filter( )->get_as_ranges( ).
          ls_entity_key-id = lt_filter[ 1 ]-range[ 1 ]-low.

          DATA(lo_resource)  = lo_entity_set->navigate_with_key( ls_entity_key ).
          DATA(lo_response_read) = lo_resource->create_request_for_read( )->execute( ).
          lo_response_read->get_business_data( IMPORTING es_business_data = ls_business_data ).
          APPEND ls_business_data TO lt_business_data.

        ELSE.
          lo_request = lo_entity_set->create_request_for_read( ).
          set_paging( io_request = io_request io_remote_request = lo_request ).
          set_filters( io_request = io_request io_remote_request = lo_request ).

          lo_response = lo_request->execute( ).
          lo_response->get_business_data( IMPORTING et_business_data = lt_business_data ).

        ENDIF.

        lt_response_data = CORRESPONDING #( lt_business_data ).
        io_response->set_data( lt_response_data ).
        io_response->set_total_number_of_records( lines( lt_response_data ) ).

      CATCH cx_root INTO DATA(lo_dump).
        DATA(lv_msg) = lo_dump->get_longtext(  ).
    ENDTRY.
  ENDMETHOD.

  METHOD set_paging.

    DATA(lo_paging) = io_request->get_paging(  ).

    IF  lo_paging->get_page_size(  ) > 0.
      io_remote_request->set_top( lo_paging->get_page_size( ) ).
    ENDIF.

    IF  lo_paging->get_offset(  )  > 0.
      io_remote_request->set_skip( lo_paging->get_offset( ) ).
    ENDIF.
  ENDMETHOD.


  METHOD set_filters.
    DATA: lt_id_range TYPE RANGE OF zsocds_scm=>tys_sepm_i_sales_order_etype-id,
          lt_so_range TYPE RANGE OF zsocds_scm=>tys_sepm_i_sales_order_etype-sales_order.
    DATA(lt_filters) = io_request->get_filter( )->get_as_ranges( ).

    LOOP AT lt_filters INTO DATA(ls_filter).
      DATA(lo_filter) = io_remote_request->create_filter_factory(  ).
      IF ls_filter-name =  'ID'.
        lt_id_range = CORRESPONDING #( ls_filter-range ).
        DATA(lo_filter_id) = lo_filter->create_by_range( iv_property_path = 'ID'
                                                         it_range         = lt_id_range ).
      ENDIF.
      IF ls_filter-name = 'SALES_ORDER'.
        lt_so_range = CORRESPONDING #( ls_filter-range ).
        DATA(lo_filter_so) = lo_filter->create_by_range( iv_property_path = 'SALES_ORDER'
                                                         it_range         = lt_so_range ).
      ENDIF.

    ENDLOOP.
    DATA(lo_filter_node_root) = COND #( WHEN lo_filter_id IS BOUND AND lo_filter_so IS BOUND THEN lo_filter_id->and( lo_filter_so )
                                    WHEN  lo_filter_id IS BOUND  THEN lo_filter_id
                                    WHEN lo_filter_so IS BOUND THEN lo_filter_so ).
    IF lo_filter_node_root  IS BOUND.
      io_remote_request->set_filter( lo_filter_node_root ).
    ENDIF.
  ENDMETHOD.

ENDCLASS.
