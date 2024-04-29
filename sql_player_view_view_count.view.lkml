view: sql_player_view_view_count {
  derived_table: {
    sql: SELECT
          player_view.groupId  AS player_view,
          player_view.Id  AS player,
          player_view.winPoints  AS player_view_win_points,
          COUNT(*) AS player_view_count
      FROM `pubgdataset.playerView`
           AS player_view
      GROUP BY
          1,
          2,
          3
      ORDER BY
          4 DESC
      LIMIT 500
       ;;
  }

  measure: count {
    type: count
    description: "descrption  for the measure count"
    drill_fields: [detail*]
  }

  dimension: player_view {
    type: string
    sql: ${TABLE}.player_view ;;
  }

  dimension: player {
    type: string
    description: "descrption  for the player"
    sql: ${TABLE}.player ;;
  }

  dimension: player_view_win_points {
    type: number
    description: "descrption  for the player_view_win_points"
    sql: ${TABLE}.player_view_win_points ;;
  }

  dimension: player_view_count {
    type: number
    description: "descrption  for the player_view_win_points"
    sql: ${TABLE}.player_view_count ;;
  }

  set: detail {
    fields: [player_view, player, player_view_win_points, player_view_count]
  }
}
