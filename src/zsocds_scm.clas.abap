"! <p class="shorttext synchronized">Consumption model for client proxy - generated</p>
"! This class has been generated based on the metadata with namespace
"! <em>ZSOCDS_SRV</em>
CLASS zsocds_scm DEFINITION
  PUBLIC
  INHERITING FROM /iwbep/cl_v4_abs_pm_model_prov
  CREATE PUBLIC.

  PUBLIC SECTION.

    TYPES:
      "! <p class="shorttext synchronized">SEPM_I_SalesOrder_EType</p>
      BEGIN OF tys_sepm_i_sales_order_etype,
        "! <em>Key property</em> ID
        id                         TYPE string,
        "! SalesOrder
        sales_order                TYPE c LENGTH 10,
        "! SalesOrder_Text
        sales_order_text           TYPE c LENGTH 255,
        "! CreatedByUser
        created_by_user            TYPE c LENGTH 12,
        "! CreationDateTime
        creation_date_time         TYPE timestampl,
        "! LastChangedByUser
        last_changed_by_user       TYPE c LENGTH 12,
        "! LastChangedDateTime
        last_changed_date_time     TYPE timestampl,
        "! IsCreatedByBusinessPartner
        is_created_by_business_par TYPE abap_bool,
        "! IsLastChangedByBusinessPartner
        is_last_changed_by_busines TYPE abap_bool,
        "! Customer
        customer                   TYPE c LENGTH 10,
        "! CustomerContact
        customer_contact           TYPE c LENGTH 10,
        "! TransactionCurrency
        transaction_currency       TYPE c LENGTH 5,
        "! GrossAmountInTransacCurrency
        gross_amount_in_transac_cu TYPE p LENGTH 9 DECIMALS 3,
        "! NetAmountInTransactionCurrency
        net_amount_in_transaction  TYPE p LENGTH 9 DECIMALS 3,
        "! TaxAmountInTransactionCurrency
        tax_amount_in_transaction  TYPE p LENGTH 9 DECIMALS 3,
        "! SalesOrderLifeCycleStatus
        sales_order_life_cycle_sta TYPE c LENGTH 1,
        "! SalesOrderBillingStatus
        sales_order_billing_status TYPE c LENGTH 1,
        "! SalesOrderDeliveryStatus
        sales_order_delivery_statu TYPE c LENGTH 1,
        "! SalesOrderOverallStatus
        sales_order_overall_status TYPE c LENGTH 1,
        "! Opportunity
        opportunity                TYPE c LENGTH 35,
        "! SalesOrderPaymentMethod
        sales_order_payment_method TYPE c LENGTH 1,
        "! SalesOrderPaymentTerms
        sales_order_payment_terms  TYPE c LENGTH 1,
        "! BillToParty
        bill_to_party              TYPE c LENGTH 10,
        "! BillToPartyRole
        bill_to_party_role         TYPE c LENGTH 3,
        "! ShipToParty
        ship_to_party              TYPE c LENGTH 10,
        "! ShipToPartyRole
        ship_to_party_role         TYPE c LENGTH 3,
      END OF tys_sepm_i_sales_order_etype,
      "! <p class="shorttext synchronized">List of SEPM_I_SalesOrder_EType</p>
      tyt_sepm_i_sales_order_etype TYPE STANDARD TABLE OF tys_sepm_i_sales_order_etype WITH DEFAULT KEY.

    TYPES:
      "! <p class="shorttext synchronized">SEPM_I_SalesOrderItem_EType</p>
      BEGIN OF tys_sepm_i_sales_order_item_et,
        "! <em>Key property</em> ID
        id                         TYPE string,
        "! SalesOrder
        sales_order                TYPE c LENGTH 10,
        "! SalesOrderItem
        sales_order_item           TYPE c LENGTH 10,
        "! SalesOrderItem_Text
        sales_order_item_text      TYPE c LENGTH 255,
        "! Product
        product                    TYPE c LENGTH 10,
        "! TransactionCurrency
        transaction_currency       TYPE c LENGTH 5,
        "! GrossAmountInTransacCurrency
        gross_amount_in_transac_cu TYPE p LENGTH 9 DECIMALS 3,
        "! NetAmountInTransactionCurrency
        net_amount_in_transaction  TYPE p LENGTH 9 DECIMALS 3,
        "! TaxAmountInTransactionCurrency
        tax_amount_in_transaction  TYPE p LENGTH 9 DECIMALS 3,
        "! ProductAvailabilityStatus
        product_availability_statu TYPE c LENGTH 1,
        "! OpportunityItem
        opportunity_item           TYPE c LENGTH 10,
      END OF tys_sepm_i_sales_order_item_et,
      "! <p class="shorttext synchronized">List of SEPM_I_SalesOrderItem_EType</p>
      tyt_sepm_i_sales_order_item_et TYPE STANDARD TABLE OF tys_sepm_i_sales_order_item_et WITH DEFAULT KEY.


    CONSTANTS:
      "! <p class="shorttext synchronized">Internal Names of the entity sets</p>
      BEGIN OF gcs_entity_set,
        "! SEPM_I_SalesOrder_E
        "! <br/> Collection of type 'SEPM_I_SalesOrder_EType'
        sepm_i_sales_order_e      TYPE /iwbep/if_cp_runtime_types=>ty_entity_set_name VALUE 'SEPM_I_SALES_ORDER_E',
        "! SEPM_I_SalesOrderItem_E
        "! <br/> Collection of type 'SEPM_I_SalesOrderItem_EType'
        sepm_i_sales_order_item_e TYPE /iwbep/if_cp_runtime_types=>ty_entity_set_name VALUE 'SEPM_I_SALES_ORDER_ITEM_E',
      END OF gcs_entity_set .

    CONSTANTS:
      "! <p class="shorttext synchronized">Internal names for entity types</p>
      BEGIN OF gcs_entity_type,
        "! <p class="shorttext synchronized">Internal names for SEPM_I_SalesOrder_EType</p>
        "! See also structure type {@link ..tys_sepm_i_sales_order_etype}
        BEGIN OF sepm_i_sales_order_etype,
          "! <p class="shorttext synchronized">Navigation properties</p>
          BEGIN OF navigation,
            "! to_Item
            to_item TYPE /iwbep/if_v4_pm_types=>ty_internal_name VALUE 'TO_ITEM',
          END OF navigation,
        END OF sepm_i_sales_order_etype,
        "! <p class="shorttext synchronized">Internal names for SEPM_I_SalesOrderItem_EType</p>
        "! See also structure type {@link ..tys_sepm_i_sales_order_item_et}
        BEGIN OF sepm_i_sales_order_item_et,
          "! <p class="shorttext synchronized">Navigation properties</p>
          BEGIN OF navigation,
            "! Dummy field - Structure must not be empty
            dummy TYPE int1 VALUE 0,
          END OF navigation,
        END OF sepm_i_sales_order_item_et,
      END OF gcs_entity_type.


    METHODS /iwbep/if_v4_mp_basic_pm~define REDEFINITION.


  PRIVATE SECTION.

    "! <p class="shorttext synchronized">Model</p>
    DATA mo_model TYPE REF TO /iwbep/if_v4_pm_model.


    "! <p class="shorttext synchronized">Define SEPM_I_SalesOrder_EType</p>
    "! @raising /iwbep/cx_gateway | <p class="shorttext synchronized">Gateway Exception</p>
    METHODS def_sepm_i_sales_order_etype RAISING /iwbep/cx_gateway.

    "! <p class="shorttext synchronized">Define SEPM_I_SalesOrderItem_EType</p>
    "! @raising /iwbep/cx_gateway | <p class="shorttext synchronized">Gateway Exception</p>
    METHODS def_sepm_i_sales_order_item_et RAISING /iwbep/cx_gateway.

ENDCLASS.


CLASS zsocds_scm IMPLEMENTATION.

  METHOD /iwbep/if_v4_mp_basic_pm~define.

    mo_model = io_model.
    mo_model->set_schema_namespace( 'ZSOCDS_SRV' ) ##NO_TEXT.

    def_sepm_i_sales_order_etype( ).
    def_sepm_i_sales_order_item_et( ).

  ENDMETHOD.


  METHOD def_sepm_i_sales_order_etype.

    DATA:
      lo_complex_property    TYPE REF TO /iwbep/if_v4_pm_cplx_prop,
      lo_entity_type         TYPE REF TO /iwbep/if_v4_pm_entity_type,
      lo_entity_set          TYPE REF TO /iwbep/if_v4_pm_entity_set,
      lo_navigation_property TYPE REF TO /iwbep/if_v4_pm_nav_prop,
      lo_primitive_property  TYPE REF TO /iwbep/if_v4_pm_prim_prop.


    lo_entity_type = mo_model->create_entity_type_by_struct(
                                    iv_entity_type_name       = 'SEPM_I_SALES_ORDER_ETYPE'
                                    is_structure              = VALUE tys_sepm_i_sales_order_etype( )
                                    iv_do_gen_prim_props         = abap_true
                                    iv_do_gen_prim_prop_colls    = abap_true
                                    iv_do_add_conv_to_prim_props = abap_true ).

    lo_entity_type->set_edm_name( 'SEPM_I_SalesOrder_EType' ) ##NO_TEXT.


    lo_entity_set = lo_entity_type->create_entity_set( 'SEPM_I_SALES_ORDER_E' ).
    lo_entity_set->set_edm_name( 'SEPM_I_SalesOrder_E' ) ##NO_TEXT.


    lo_primitive_property = lo_entity_type->get_primitive_property( 'ID' ).
    lo_primitive_property->set_edm_name( 'ID' ) ##NO_TEXT.
    lo_primitive_property->set_edm_type( 'String' ) ##NO_TEXT.
    lo_primitive_property->set_is_key( ).

    lo_primitive_property = lo_entity_type->get_primitive_property( 'SALES_ORDER' ).
    lo_primitive_property->set_edm_name( 'SalesOrder' ) ##NO_TEXT.
    lo_primitive_property->set_edm_type( 'String' ) ##NO_TEXT.
    lo_primitive_property->set_max_length( 10 ) ##NUMBER_OK.
    lo_primitive_property->set_is_nullable( ).

    lo_primitive_property = lo_entity_type->get_primitive_property( 'SALES_ORDER_TEXT' ).
    lo_primitive_property->set_edm_name( 'SalesOrder_Text' ) ##NO_TEXT.
    lo_primitive_property->set_edm_type( 'String' ) ##NO_TEXT.
    lo_primitive_property->set_max_length( 255 ) ##NUMBER_OK.
    lo_primitive_property->set_is_nullable( ).

    lo_primitive_property = lo_entity_type->get_primitive_property( 'CREATED_BY_USER' ).
    lo_primitive_property->set_edm_name( 'CreatedByUser' ) ##NO_TEXT.
    lo_primitive_property->set_edm_type( 'String' ) ##NO_TEXT.
    lo_primitive_property->set_max_length( 12 ) ##NUMBER_OK.
    lo_primitive_property->set_is_nullable( ).

    lo_primitive_property = lo_entity_type->get_primitive_property( 'CREATION_DATE_TIME' ).
    lo_primitive_property->set_edm_name( 'CreationDateTime' ) ##NO_TEXT.
    lo_primitive_property->set_edm_type( 'DateTimeOffset' ) ##NO_TEXT.
    lo_primitive_property->set_precision( 7 ) ##NUMBER_OK.
    lo_primitive_property->set_is_nullable( ).

    lo_primitive_property = lo_entity_type->get_primitive_property( 'LAST_CHANGED_BY_USER' ).
    lo_primitive_property->set_edm_name( 'LastChangedByUser' ) ##NO_TEXT.
    lo_primitive_property->set_edm_type( 'String' ) ##NO_TEXT.
    lo_primitive_property->set_max_length( 12 ) ##NUMBER_OK.
    lo_primitive_property->set_is_nullable( ).

    lo_primitive_property = lo_entity_type->get_primitive_property( 'LAST_CHANGED_DATE_TIME' ).
    lo_primitive_property->set_edm_name( 'LastChangedDateTime' ) ##NO_TEXT.
    lo_primitive_property->set_edm_type( 'DateTimeOffset' ) ##NO_TEXT.
    lo_primitive_property->set_precision( 7 ) ##NUMBER_OK.
    lo_primitive_property->set_is_nullable( ).

    lo_primitive_property = lo_entity_type->get_primitive_property( 'IS_CREATED_BY_BUSINESS_PAR' ).
    lo_primitive_property->set_edm_name( 'IsCreatedByBusinessPartner' ) ##NO_TEXT.
    lo_primitive_property->set_edm_type( 'Boolean' ) ##NO_TEXT.
    lo_primitive_property->set_is_nullable( ).

    lo_primitive_property = lo_entity_type->get_primitive_property( 'IS_LAST_CHANGED_BY_BUSINES' ).
    lo_primitive_property->set_edm_name( 'IsLastChangedByBusinessPartner' ) ##NO_TEXT.
    lo_primitive_property->set_edm_type( 'Boolean' ) ##NO_TEXT.
    lo_primitive_property->set_is_nullable( ).

    lo_primitive_property = lo_entity_type->get_primitive_property( 'CUSTOMER' ).
    lo_primitive_property->set_edm_name( 'Customer' ) ##NO_TEXT.
    lo_primitive_property->set_edm_type( 'String' ) ##NO_TEXT.
    lo_primitive_property->set_max_length( 10 ) ##NUMBER_OK.
    lo_primitive_property->set_is_nullable( ).

    lo_primitive_property = lo_entity_type->get_primitive_property( 'CUSTOMER_CONTACT' ).
    lo_primitive_property->set_edm_name( 'CustomerContact' ) ##NO_TEXT.
    lo_primitive_property->set_edm_type( 'String' ) ##NO_TEXT.
    lo_primitive_property->set_max_length( 10 ) ##NUMBER_OK.
    lo_primitive_property->set_is_nullable( ).

    lo_primitive_property = lo_entity_type->get_primitive_property( 'TRANSACTION_CURRENCY' ).
    lo_primitive_property->set_edm_name( 'TransactionCurrency' ) ##NO_TEXT.
    lo_primitive_property->set_edm_type( 'String' ) ##NO_TEXT.
    lo_primitive_property->set_max_length( 5 ) ##NUMBER_OK.
    lo_primitive_property->set_is_nullable( ).

    lo_primitive_property = lo_entity_type->get_primitive_property( 'GROSS_AMOUNT_IN_TRANSAC_CU' ).
    lo_primitive_property->set_edm_name( 'GrossAmountInTransacCurrency' ) ##NO_TEXT.
    lo_primitive_property->set_edm_type( 'Decimal' ) ##NO_TEXT.
    lo_primitive_property->set_precision( 16 ) ##NUMBER_OK.
    lo_primitive_property->set_scale( 3 ) ##NUMBER_OK.
    lo_primitive_property->set_is_nullable( ).

    lo_primitive_property = lo_entity_type->get_primitive_property( 'NET_AMOUNT_IN_TRANSACTION' ).
    lo_primitive_property->set_edm_name( 'NetAmountInTransactionCurrency' ) ##NO_TEXT.
    lo_primitive_property->set_edm_type( 'Decimal' ) ##NO_TEXT.
    lo_primitive_property->set_precision( 16 ) ##NUMBER_OK.
    lo_primitive_property->set_scale( 3 ) ##NUMBER_OK.
    lo_primitive_property->set_is_nullable( ).

    lo_primitive_property = lo_entity_type->get_primitive_property( 'TAX_AMOUNT_IN_TRANSACTION' ).
    lo_primitive_property->set_edm_name( 'TaxAmountInTransactionCurrency' ) ##NO_TEXT.
    lo_primitive_property->set_edm_type( 'Decimal' ) ##NO_TEXT.
    lo_primitive_property->set_precision( 16 ) ##NUMBER_OK.
    lo_primitive_property->set_scale( 3 ) ##NUMBER_OK.
    lo_primitive_property->set_is_nullable( ).

    lo_primitive_property = lo_entity_type->get_primitive_property( 'SALES_ORDER_LIFE_CYCLE_STA' ).
    lo_primitive_property->set_edm_name( 'SalesOrderLifeCycleStatus' ) ##NO_TEXT.
    lo_primitive_property->set_edm_type( 'String' ) ##NO_TEXT.
    lo_primitive_property->set_max_length( 1 ) ##NUMBER_OK.
    lo_primitive_property->set_is_nullable( ).

    lo_primitive_property = lo_entity_type->get_primitive_property( 'SALES_ORDER_BILLING_STATUS' ).
    lo_primitive_property->set_edm_name( 'SalesOrderBillingStatus' ) ##NO_TEXT.
    lo_primitive_property->set_edm_type( 'String' ) ##NO_TEXT.
    lo_primitive_property->set_max_length( 1 ) ##NUMBER_OK.
    lo_primitive_property->set_is_nullable( ).

    lo_primitive_property = lo_entity_type->get_primitive_property( 'SALES_ORDER_DELIVERY_STATU' ).
    lo_primitive_property->set_edm_name( 'SalesOrderDeliveryStatus' ) ##NO_TEXT.
    lo_primitive_property->set_edm_type( 'String' ) ##NO_TEXT.
    lo_primitive_property->set_max_length( 1 ) ##NUMBER_OK.
    lo_primitive_property->set_is_nullable( ).

    lo_primitive_property = lo_entity_type->get_primitive_property( 'SALES_ORDER_OVERALL_STATUS' ).
    lo_primitive_property->set_edm_name( 'SalesOrderOverallStatus' ) ##NO_TEXT.
    lo_primitive_property->set_edm_type( 'String' ) ##NO_TEXT.
    lo_primitive_property->set_max_length( 1 ) ##NUMBER_OK.
    lo_primitive_property->set_is_nullable( ).

    lo_primitive_property = lo_entity_type->get_primitive_property( 'OPPORTUNITY' ).
    lo_primitive_property->set_edm_name( 'Opportunity' ) ##NO_TEXT.
    lo_primitive_property->set_edm_type( 'String' ) ##NO_TEXT.
    lo_primitive_property->set_max_length( 35 ) ##NUMBER_OK.
    lo_primitive_property->set_is_nullable( ).

    lo_primitive_property = lo_entity_type->get_primitive_property( 'SALES_ORDER_PAYMENT_METHOD' ).
    lo_primitive_property->set_edm_name( 'SalesOrderPaymentMethod' ) ##NO_TEXT.
    lo_primitive_property->set_edm_type( 'String' ) ##NO_TEXT.
    lo_primitive_property->set_max_length( 1 ) ##NUMBER_OK.
    lo_primitive_property->set_is_nullable( ).

    lo_primitive_property = lo_entity_type->get_primitive_property( 'SALES_ORDER_PAYMENT_TERMS' ).
    lo_primitive_property->set_edm_name( 'SalesOrderPaymentTerms' ) ##NO_TEXT.
    lo_primitive_property->set_edm_type( 'String' ) ##NO_TEXT.
    lo_primitive_property->set_max_length( 1 ) ##NUMBER_OK.
    lo_primitive_property->set_is_nullable( ).

    lo_primitive_property = lo_entity_type->get_primitive_property( 'BILL_TO_PARTY' ).
    lo_primitive_property->set_edm_name( 'BillToParty' ) ##NO_TEXT.
    lo_primitive_property->set_edm_type( 'String' ) ##NO_TEXT.
    lo_primitive_property->set_max_length( 10 ) ##NUMBER_OK.
    lo_primitive_property->set_is_nullable( ).

    lo_primitive_property = lo_entity_type->get_primitive_property( 'BILL_TO_PARTY_ROLE' ).
    lo_primitive_property->set_edm_name( 'BillToPartyRole' ) ##NO_TEXT.
    lo_primitive_property->set_edm_type( 'String' ) ##NO_TEXT.
    lo_primitive_property->set_max_length( 3 ) ##NUMBER_OK.
    lo_primitive_property->set_is_nullable( ).

    lo_primitive_property = lo_entity_type->get_primitive_property( 'SHIP_TO_PARTY' ).
    lo_primitive_property->set_edm_name( 'ShipToParty' ) ##NO_TEXT.
    lo_primitive_property->set_edm_type( 'String' ) ##NO_TEXT.
    lo_primitive_property->set_max_length( 10 ) ##NUMBER_OK.
    lo_primitive_property->set_is_nullable( ).

    lo_primitive_property = lo_entity_type->get_primitive_property( 'SHIP_TO_PARTY_ROLE' ).
    lo_primitive_property->set_edm_name( 'ShipToPartyRole' ) ##NO_TEXT.
    lo_primitive_property->set_edm_type( 'String' ) ##NO_TEXT.
    lo_primitive_property->set_max_length( 3 ) ##NUMBER_OK.
    lo_primitive_property->set_is_nullable( ).

    lo_navigation_property = lo_entity_type->create_navigation_property( 'TO_ITEM' ).
    lo_navigation_property->set_edm_name( 'to_Item' ) ##NO_TEXT.
    lo_navigation_property->set_target_entity_type_name( 'SEPM_I_SALES_ORDER_ITEM_ET' ).
    lo_navigation_property->set_target_multiplicity( /iwbep/if_v4_pm_types=>gcs_nav_multiplicity-to_many_optional ).

  ENDMETHOD.


  METHOD def_sepm_i_sales_order_item_et.

    DATA:
      lo_complex_property    TYPE REF TO /iwbep/if_v4_pm_cplx_prop,
      lo_entity_type         TYPE REF TO /iwbep/if_v4_pm_entity_type,
      lo_entity_set          TYPE REF TO /iwbep/if_v4_pm_entity_set,
      lo_navigation_property TYPE REF TO /iwbep/if_v4_pm_nav_prop,
      lo_primitive_property  TYPE REF TO /iwbep/if_v4_pm_prim_prop.


    lo_entity_type = mo_model->create_entity_type_by_struct(
                                    iv_entity_type_name       = 'SEPM_I_SALES_ORDER_ITEM_ET'
                                    is_structure              = VALUE tys_sepm_i_sales_order_item_et( )
                                    iv_do_gen_prim_props         = abap_true
                                    iv_do_gen_prim_prop_colls    = abap_true
                                    iv_do_add_conv_to_prim_props = abap_true ).

    lo_entity_type->set_edm_name( 'SEPM_I_SalesOrderItem_EType' ) ##NO_TEXT.


    lo_entity_set = lo_entity_type->create_entity_set( 'SEPM_I_SALES_ORDER_ITEM_E' ).
    lo_entity_set->set_edm_name( 'SEPM_I_SalesOrderItem_E' ) ##NO_TEXT.


    lo_primitive_property = lo_entity_type->get_primitive_property( 'ID' ).
    lo_primitive_property->set_edm_name( 'ID' ) ##NO_TEXT.
    lo_primitive_property->set_edm_type( 'String' ) ##NO_TEXT.
    lo_primitive_property->set_is_key( ).

    lo_primitive_property = lo_entity_type->get_primitive_property( 'SALES_ORDER' ).
    lo_primitive_property->set_edm_name( 'SalesOrder' ) ##NO_TEXT.
    lo_primitive_property->set_edm_type( 'String' ) ##NO_TEXT.
    lo_primitive_property->set_max_length( 10 ) ##NUMBER_OK.
    lo_primitive_property->set_is_nullable( ).

    lo_primitive_property = lo_entity_type->get_primitive_property( 'SALES_ORDER_ITEM' ).
    lo_primitive_property->set_edm_name( 'SalesOrderItem' ) ##NO_TEXT.
    lo_primitive_property->set_edm_type( 'String' ) ##NO_TEXT.
    lo_primitive_property->set_max_length( 10 ) ##NUMBER_OK.
    lo_primitive_property->set_is_nullable( ).

    lo_primitive_property = lo_entity_type->get_primitive_property( 'SALES_ORDER_ITEM_TEXT' ).
    lo_primitive_property->set_edm_name( 'SalesOrderItem_Text' ) ##NO_TEXT.
    lo_primitive_property->set_edm_type( 'String' ) ##NO_TEXT.
    lo_primitive_property->set_max_length( 255 ) ##NUMBER_OK.
    lo_primitive_property->set_is_nullable( ).

    lo_primitive_property = lo_entity_type->get_primitive_property( 'PRODUCT' ).
    lo_primitive_property->set_edm_name( 'Product' ) ##NO_TEXT.
    lo_primitive_property->set_edm_type( 'String' ) ##NO_TEXT.
    lo_primitive_property->set_max_length( 10 ) ##NUMBER_OK.
    lo_primitive_property->set_is_nullable( ).

    lo_primitive_property = lo_entity_type->get_primitive_property( 'TRANSACTION_CURRENCY' ).
    lo_primitive_property->set_edm_name( 'TransactionCurrency' ) ##NO_TEXT.
    lo_primitive_property->set_edm_type( 'String' ) ##NO_TEXT.
    lo_primitive_property->set_max_length( 5 ) ##NUMBER_OK.
    lo_primitive_property->set_is_nullable( ).

    lo_primitive_property = lo_entity_type->get_primitive_property( 'GROSS_AMOUNT_IN_TRANSAC_CU' ).
    lo_primitive_property->set_edm_name( 'GrossAmountInTransacCurrency' ) ##NO_TEXT.
    lo_primitive_property->set_edm_type( 'Decimal' ) ##NO_TEXT.
    lo_primitive_property->set_precision( 16 ) ##NUMBER_OK.
    lo_primitive_property->set_scale( 3 ) ##NUMBER_OK.
    lo_primitive_property->set_is_nullable( ).

    lo_primitive_property = lo_entity_type->get_primitive_property( 'NET_AMOUNT_IN_TRANSACTION' ).
    lo_primitive_property->set_edm_name( 'NetAmountInTransactionCurrency' ) ##NO_TEXT.
    lo_primitive_property->set_edm_type( 'Decimal' ) ##NO_TEXT.
    lo_primitive_property->set_precision( 16 ) ##NUMBER_OK.
    lo_primitive_property->set_scale( 3 ) ##NUMBER_OK.
    lo_primitive_property->set_is_nullable( ).

    lo_primitive_property = lo_entity_type->get_primitive_property( 'TAX_AMOUNT_IN_TRANSACTION' ).
    lo_primitive_property->set_edm_name( 'TaxAmountInTransactionCurrency' ) ##NO_TEXT.
    lo_primitive_property->set_edm_type( 'Decimal' ) ##NO_TEXT.
    lo_primitive_property->set_precision( 16 ) ##NUMBER_OK.
    lo_primitive_property->set_scale( 3 ) ##NUMBER_OK.
    lo_primitive_property->set_is_nullable( ).

    lo_primitive_property = lo_entity_type->get_primitive_property( 'PRODUCT_AVAILABILITY_STATU' ).
    lo_primitive_property->set_edm_name( 'ProductAvailabilityStatus' ) ##NO_TEXT.
    lo_primitive_property->set_edm_type( 'String' ) ##NO_TEXT.
    lo_primitive_property->set_max_length( 1 ) ##NUMBER_OK.
    lo_primitive_property->set_is_nullable( ).

    lo_primitive_property = lo_entity_type->get_primitive_property( 'OPPORTUNITY_ITEM' ).
    lo_primitive_property->set_edm_name( 'OpportunityItem' ) ##NO_TEXT.
    lo_primitive_property->set_edm_type( 'String' ) ##NO_TEXT.
    lo_primitive_property->set_max_length( 10 ) ##NUMBER_OK.
    lo_primitive_property->set_is_nullable( ).

  ENDMETHOD.


ENDCLASS.
