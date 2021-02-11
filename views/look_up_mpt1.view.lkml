view: look_up_mpt1 {
  sql_table_name: "PUBLIC"."LOOK_UP_MPT1"
    ;;

  dimension: account_sid {
    type: string
    sql: ${TABLE}."ACCOUNT_SID" ;;
  }

  dimension: created_year {
    type: number
    sql: ${TABLE}."CREATED_YEAR" ;;
  }

  dimension: created_yr_qtr {
    type: string
    sql: ${TABLE}."CREATED_YR_QTR" ;;
  }

  dimension: q118 {
    type: number
    sql: ${TABLE}."Q118" ;;
  }

  dimension: q119 {
    type: number
    sql: ${TABLE}."Q119" ;;
  }

  dimension: q120 {
    type: number
    sql: ${TABLE}."Q120" ;;
  }

  dimension: q218 {
    type: number
    sql: ${TABLE}."Q218" ;;
  }

  dimension: q219 {
    type: number
    sql: ${TABLE}."Q219" ;;
  }

  dimension: q220 {
    type: number
    sql: ${TABLE}."Q220" ;;
  }

  dimension: q318 {
    type: number
    sql: ${TABLE}."Q318" ;;
  }

  dimension: q319 {
    type: number
    sql: ${TABLE}."Q319" ;;
  }

  dimension: q320 {
    type: number
    sql: ${TABLE}."Q320" ;;
  }

  dimension: q418 {
    type: number
    sql: ${TABLE}."Q418" ;;
  }

  dimension: q419 {
    type: number
    sql: ${TABLE}."Q419" ;;
  }

  dimension: q420 {
    type: number
    sql: ${TABLE}."Q420" ;;
  }

  measure: count {
    type: count
    drill_fields: []
  }
}
