view: test_view {
  sql_table_name: `pubgdataset.testView`
    ;;

  dimension: damage_dealt {
    type: number
    sql: ${TABLE}.damageDealt ;;
  }

  dimension: headshot_kills {
    type: number
    sql: ${TABLE}.headshotKills ;;
  }

  measure: count {
    type: count
    drill_fields: []
  }
}
