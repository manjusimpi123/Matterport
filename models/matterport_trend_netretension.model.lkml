connection: "matterport__trend_net_retension"

# include all the views
include: "/views/**/*.view"

datagroup: matterport_trend_netretension_default_datagroup {
  # sql_trigger: SELECT MAX(id) FROM etl_log;;
  max_cache_age: "1 hour"
}

persist_with: matterport_trend_netretension_default_datagroup

explore: look_up_mpt {}

explore: look_up_mpt1 {}

explore: saas_masterdata {}

explore: vw_masterdata {}

explore: vw_trends_matterport {}
