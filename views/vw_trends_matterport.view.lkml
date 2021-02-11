view: vw_trends_matterport {
  sql_table_name: "PUBLIC"."VW_TRENDS_MATTERPORT"
    ;;

  dimension: churned {
    type: number
    sql: ${TABLE}."CHURNED" ;;
  }

  dimension: downgrade {
    type: number
    sql: ${TABLE}."DOWNGRADE" ;;
  }

  dimension: new_logo {
    type: number
    sql: ${TABLE}."NEW_LOGO" ;;
  }

  dimension: quarter {
    type: string
    sql: ${TABLE}."QUARTER" ;;
  }

  dimension: upgrade {
    type: number
    sql: ${TABLE}."UPGRADE" ;;
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
