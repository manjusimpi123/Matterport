view: vw_trends_matterport {
  sql_table_name: "PUBLIC"."VW_TRENDS_MATTERPORT"
    ;;

  dimension: churned {
    type: number
    sql: ${TABLE}."CHURNED" ;;
  }

  measure: sum_churned {
    type: sum
    sql: ${TABLE}."CHURNED" * 1000;;
  }

  dimension: downgrade {
    type: number
    sql: ${TABLE}."DOWNGRADE" ;;
  }

  measure: sum_downgrade {
    type: sum
    sql: ${TABLE}."DOWNGRADE" *1000 ;;
  }

  dimension: new_logo {
    type: number
    sql: ${TABLE}."NEW_LOGO" ;;
  }

  measure: sum_new_logo {
    type: sum
    sql: ${TABLE}."NEW_LOGO" * 1000 ;;
  }

  dimension: quarter {
    type: string
    sql: ${TABLE}."QUARTER" ;;
  }

  dimension: upgrade {
    type: number
    sql: ${TABLE}."UPGRADE" ;;
  }

  measure: sum_upgrade {
    type: sum
    sql: ${TABLE}."UPGRADE" * 1000 ;;
  }

  dimension: year {
    type: number
    sql: ${TABLE}."YEAR" ;;
  }

  measure: count {
    type: count
    drill_fields: []
  }
}
