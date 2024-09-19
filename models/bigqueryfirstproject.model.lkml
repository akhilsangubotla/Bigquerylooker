# Specify the connection to be used
connection: "bigqueryconn01"

# Include all the views from the directory
include: "/**/*.view"

# Define a datagroup for caching
datagroup: bigqueryfirstproject_default_datagroup {
  # If you need to use a SQL trigger, uncomment and specify the correct SQL
  # sql_trigger: SELECT MAX(id) FROM etl_log;;
  max_cache_age: "1 hour"
}

# Specify the datagroup for persistence
persist_with: bigqueryfirstproject_default_datagroup

# Define explores
explore: account_view {
  tags: ["Confidential", "Customer Data"]
  description: "Description added"
}

explore: business_view {
  tags: ["Confidential", "Customer Data"]
  description: "Description I Want"
}

explore: columnstag {}

explore: player_view {}

explore: pubgtrain {}

explore: reportroles {}

explore: sample_view {}

explore: test_view {}

explore: sql_player_view_view_count {}

explore: sql_runner_query_multiple_test {}
