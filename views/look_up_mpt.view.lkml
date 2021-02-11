view: look_up_mpt {
  sql_table_name: "PUBLIC"."LOOK_UP_MPT"
    ;;

  dimension: account_sid {
    type: string
    sql: ${TABLE}."ACCOUNT_SID" ;;
  }

  dimension: created_year {
    type: string
    sql: ${TABLE}."CREATED_YEAR" ;;
  }

  dimension: created_yr_qtr {
    type: string
    sql: ${TABLE}."CREATED_YR_QTR" ;;
  }

  dimension: q118 {
    type: string
    sql: ${TABLE}."Q118" ;;
  }

  dimension: q119 {
    type: string
    sql: ${TABLE}."Q119" ;;
  }

  dimension: q120 {
    type: string
    sql: ${TABLE}."Q120" ;;
  }

  dimension: q218 {
    type: string
    sql: ${TABLE}."Q218" ;;
  }

  dimension: q219 {
    type: string
    sql: ${TABLE}."Q219" ;;
  }

  dimension: q220 {
    type: string
    sql: ${TABLE}."Q220" ;;
  }

  dimension: q318 {
    type: string
    sql: ${TABLE}."Q318" ;;
  }

  dimension: q319 {
    type: string
    sql: ${TABLE}."Q319" ;;
  }

  dimension: q320 {
    type: string
    sql: ${TABLE}."Q320" ;;
  }

  dimension: q418 {
    type: string
    sql: ${TABLE}."Q418" ;;
  }

  dimension: q419 {
    type: string
    sql: ${TABLE}."Q419" ;;
  }

  dimension: q420 {
    type: string
    sql: ${TABLE}."Q420" ;;
  }

  measure: count {
    type: count
    drill_fields: []
  }
}
