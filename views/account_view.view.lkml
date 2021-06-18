view: account_view {
  sql_table_name: `pubgdataset.accountView`
    ;;

  dimension: bank {
    type: string
    sql: ${TABLE}.bank ;;
  }

  dimension: rank {
    type: number
    sql: ${TABLE}.rank ;;
  }

  measure: count {
    type: count
    drill_fields: []
  }
}
