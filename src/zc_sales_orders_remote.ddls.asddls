@EndUserText.label: 'Get remote sales orders'
@ObjectModel: {
    query: {
        implementedBy: 'ABAP:ZCL_SALES_ORDER_REMOTE_CE'
    }
}
define root custom entity ZC_SALES_ORDERS_REMOTE
{
      @UI.facet                  : [
           {
             id                  :       'SalesOrder',
             purpose             :  #STANDARD,
             type                :     #IDENTIFICATION_REFERENCE,
             label               :    'Sales Orders ES5 system',
             position            : 10 }
         ]

      @UI.hidden                 : true
  key ID                         : abap.char( 30 );

      @UI                        : { lineItem : [{position: 10, importance: #HIGH}],
                                      identification  : [{position: 10}],
                                      selectionField  : [{position: 10}] }
      @EndUserText.label         : 'Sales order'
      SALES_ORDER                : abap.char( 10 );

      @UI                        : { lineItem : [{position: 20, importance: #HIGH}],
                                      identification  : [{position: 20}]}
      @EndUserText.label         : 'Sales order text'
      SALES_ORDER_TEXT           : abap.char( 255 );
      @UI                        : { lineItem : [{position: 30}],
                                identification  : [{position: 30}]}
      @EndUserText.label         : 'Created By'
      CREATED_BY_USER            : abap.char( 12 );
      @UI                        : { lineItem : [{position: 40}],
                          identification  : [{position: 40}]}
      @EndUserText.label         : 'Last Changed By'
      LAST_CHANGED_BY_USER       : abap.char( 12 );
      @UI                        : { lineItem : [{position: 50}],
                     identification  : [{position: 50}]}
      @EndUserText.label         : 'Created by business par'
      IS_CREATED_BY_BUSINESS_PAR : abap.char( 1 );
      @UI                        : { lineItem : [{position: 60}],
                identification   : [{position: 60}]}
      @EndUserText.label         : 'Last changed by business par'
      IS_LAST_CHANGED_BY_BUSINES : abap.char( 1 );
      @UI                        : { lineItem : [{position: 70}],
            identification       : [{position: 70}]}
      @EndUserText.label         : 'Customer'
      CUSTOMER                   : abap.char( 10 );
      @UI                        : { lineItem : [{position: 80}],
       identification            : [{position: 80}]}
      @EndUserText.label         : 'Transactional currency'
      TRANSACTION_CURRENCY       : abap.cuky( 5 );
      @UI                        : { lineItem : [{position: 90}],
      identification             : [{position: 90}]}
      @EndUserText.label         : 'Gross amount'
      GROSS_AMOUNT_IN_TRANSAC_CU : abap.dec( 9, 3 );
      @UI                        : { lineItem : [{position: 100}],
                                      identification  : [{position: 100}]}
      @EndUserText.label         : 'Net amount'
      NET_AMOUNT_IN_TRANSACTION  : abap.dec( 9, 3 );
      @UI                        : { lineItem : [{position: 110}],
                                  identification  : [{position: 110}]}
      @EndUserText.label         : 'Tax amount'
      TAX_AMOUNT_IN_TRANSACTION  : abap.dec( 9, 3 );

}
