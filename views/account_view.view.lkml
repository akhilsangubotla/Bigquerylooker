view: account_view {
  sql_table_name: `pubgdataset.accountView`
    ;;

  dimension: bank {
    type: string
    description: "akhil"
    sql: ${TABLE}.bank ;;
  }

  dimension: rank {
    type: number
    sql: ${TABLE}.rank ;;
  }

  measure: count {
    type: count
    description: "akhil"
    drill_fields: []
  }
}
