view: account_view {
  sql_table_name: `pubgdataset.accountView`
    ;;

  dimension: bank {
    type: string
    description: "akhil"
    sql: ${TABLE}.bank ;;
  }

  dimension: rank {
    tags: ["Important Data", "Customer Data"]
    type: number
    sql: ${TABLE}.rank;;
  }

  measure: count {
    tags: ["Data", "Customer"]
    type: count
    description: "akhil"
    drill_fields: []
  }
}
