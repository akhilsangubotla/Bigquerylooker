view: player_view {
  sql_table_name: `pubgdataset.playerView`
    ;;
  drill_fields: [id]

  dimension: id {
    primary_key: yes
    type: string
    sql: ${TABLE}.Id ;;
  }

  dimension: group_id {
    type: string
    sql: ${TABLE}.groupId ;;
  }

  dimension: win_points {
    type: number
    sql: ${TABLE}.winPoints ;;
  }

  measure: count {
    type: count
    drill_fields: [id]
  }
}
