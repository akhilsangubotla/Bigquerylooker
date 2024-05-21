connection: "bigqueryconn01"

# include all the views
include: "/**/*.view"


datagroup: bigqueryfirstproject_default_datagroup {
  # sql_trigger: SELECT MAX(id) FROM etl_log;;
  max_cache_age: "1 hour"
}

persist_with: bigqueryfirstproject_default_datagroup

explore: account_view {}

explore: business_view {}


explore: columnstag {}

explore: player_view {}

explore: pubgtrain {}

explore: reportroles {}

explore: sample_view {}

explore: test_view {}

explore : sql_player_view_view_count {}

explore : sql_runner_query_multiple_test {}
