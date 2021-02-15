view: vw_masterdata {
  sql_table_name: "PUBLIC"."VW_MASTERDATA"
    ;;

  dimension: account_creation_date {
    type: string
    sql: ${TABLE}."ACCOUNT_CREATION_DATE" ;;
  }

  dimension: account_name {
    type: string
    sql: ${TABLE}."ACCOUNT_NAME" ;;
  }

  dimension: account_name_rollup {
    type: string
    sql: ${TABLE}."ACCOUNT_NAME_ROLLUP" ;;
  }

  dimension: account_sid {
    type: string
    sql: ${TABLE}."ACCOUNT_SID" ;;
  }

  dimension: country {
    type: string
    map_layer_name: countries
    sql: ${TABLE}."COUNTRY" ;;
  }

  dimension: created_month {
    type: string
    sql: ${TABLE}."CREATED_MONTH" ;;
  }

  dimension: created_year {
    type: string
    sql: ${TABLE}."CREATED_YEAR" ;;
  }

  dimension: currency {
    type: string
    sql: ${TABLE}."CURRENCY" ;;
  }

  dimension_group: date {
    type: time
    timeframes: [
      raw,
      date,
      week,
      month,
      quarter,
      year
    ]
    convert_tz: no
    datatype: date
    sql: ${TABLE}."DATE" ;;
  }

  dimension: dollor {
    type: number
    sql: ${TABLE}."DOLLOR" ;;
  }

  dimension: geo {
    type: string
    sql: ${TABLE}."GEO" ;;
  }

  dimension: geo1 {
    type: string
    sql: ${TABLE}."GEO1" ;;
  }

  dimension: geo2 {
    type: string
    sql: ${TABLE}."GEO2" ;;
  }

  dimension: gl_date {
    type: string
    sql: ${TABLE}."GL_DATE" ;;
  }

  dimension: industry {
    type: string
    sql: ${TABLE}."INDUSTRY" ;;
  }

  dimension: month {
    type: string
    sql: ${TABLE}."MONTH" ;;
  }

  dimension: product_type {
    type: string
    sql: ${TABLE}."PRODUCT_TYPE" ;;
  }

  dimension: quarter {
    type: number
    sql:${TABLE}."QUARTER"   ;;
  }

  dimension: fiscal_quarter {
    type: string
    sql:
    CASE
    WHEN ${TABLE}."QUARTER" in (1) then 'Q1'
    WHEN ${TABLE}."QUARTER" in (2) then 'Q2'
    WHEN ${TABLE}."QUARTER" in (3) then 'Q3'
    WHEN ${TABLE}."QUARTER" in (4) then 'Q4'
    ELSE
    NULL
    END ;;
  }


  dimension: revenue_product_type {
    type: string
    sql: ${TABLE}."REVENUE_PRODUCT_TYPE" ;;
  }

  dimension: smb_ent {
    type: string
    sql: ${TABLE}."SMB_ENT" ;;
  }

  dimension: sum_of_usd_amt {
    type: number
    sql: ${TABLE}."SUM_OF_USD_AMT" ;;
  }
  measure: sum_of_usd_amt_M {
    type: sum
    sql: ${TABLE}."SUM_OF_USD_AMT" ;;
  }

  dimension: vertical {
    type: string
    sql: ${TABLE}."VERTICAL" ;;
  }

  dimension: vertical_2 {
    type: string
    sql: ${TABLE}."VERTICAL_2" ;;
    drill_fields: [sum_of_usd_amt_M]
  }

  dimension: vertical_3 {
    type: string
    sql: ${TABLE}."VERTICAL_3" ;;
  }

  dimension: year {
    type: string
    sql: ${TABLE}."YEAR" ;;
  }

  measure: count {
    type: count
    drill_fields: [account_name]
  }
}
