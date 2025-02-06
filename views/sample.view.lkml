view: pubgtrain {
  sql_table_name: `pubgdataset.pubgtrain`
    ;;
  drill_fields: [id]

  dimension: id {
    primary_key: yes
    type: string
    sql: ${TABLE}.Id ;;
  }

  dimension: assists {
    type: number
    sql: ${TABLE}.assists ;;
  }

  dimension: boosts {
    type: number
    sql: ${TABLE}.boosts ;;
  }

  dimension: damage_dealt {
    type: number
    sql: ${TABLE}.damageDealt ;;
  }

  dimension: dbnos {
    type: number
    sql: ${TABLE}.DBNOs ;;
  }

  dimension: group_id {
    type: string
    sql: ${TABLE}.groupId ;;
  }

  dimension: headshot_kills {
    type: number
    sql: ${TABLE}.headshotKills ;;
  }

  dimension: heals {
    type: number
    sql: ${TABLE}.heals ;;
  }

  dimension: kill_place {
    type: number
    sql: ${TABLE}.killPlace ;;
  }

  dimension: kill_points {
    type: number
    sql: ${TABLE}.killPoints ;;
  }

  dimension: kill_streaks {
    type: number
    sql: ${TABLE}.killStreaks ;;
  }

  dimension: kills {
    type: number
    sql: ${TABLE}.kills ;;
  }

  dimension: longest_kill {
    type: number
    sql: ${TABLE}.longestKill ;;
  }

  dimension: match_duration {
    type: number
    sql: ${TABLE}.matchDuration ;;
  }

  dimension: match_id {
    type: string
    sql: ${TABLE}.matchId ;;
  }

  dimension: match_type {
    type: string
    sql: ${TABLE}.matchType ;;
  }

  dimension: max_place {
    type: number
    sql: ${TABLE}.maxPlace ;;
  }

  dimension: num_groups {
    type: number
    sql: ${TABLE}.numGroups ;;
  }

  dimension: rank_points {
    type: number
    sql: ${TABLE}.rankPoints ;;
  }

  dimension: revives {
    type: number
    sql: ${TABLE}.revives ;;
  }

  dimension: ride_distance {
    type: number
    sql: ${TABLE}.rideDistance ;;
  }

  dimension: road_kills {
    type: number
    sql: ${TABLE}.roadKills ;;
  }

  dimension: swim_distance {
    type: number
    sql: ${TABLE}.swimDistance ;;
  }

  dimension: team_kills {
    type: number
    sql: ${TABLE}.teamKills ;;
  }

  dimension: vehicle_destroys {
    type: number
    sql: ${TABLE}.vehicleDestroys ;;
  }

  dimension: walk_distance {
    type: number
    sql: ${TABLE}.walkDistance ;;
  }

  dimension: weapons_acquired {
    type: number
    sql: ${TABLE}.weaponsAcquired ;;
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
