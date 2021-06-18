view: columnstag {
  sql_table_name: `pubgdataset.columnstag`
    ;;

  dimension: __of_tags {
    type: number
    sql: ${TABLE}.__of_Tags ;;
  }

  dimension: column {
    type: string
    sql: ${TABLE}.Column ;;
  }

  dimension: database_name {
    type: string
    sql: ${TABLE}.Database_Name ;;
  }

  dimension: databasetype {
    type: string
    sql: ${TABLE}.Databasetype ;;
  }

  dimension: schema {
    type: string
    sql: ${TABLE}.Schema ;;
  }

  dimension: table {
    type: string
    sql: ${TABLE}.Table ;;
  }

  measure: count {
    type: count
    drill_fields: [database_name]
  }
}
