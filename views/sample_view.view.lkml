view: sample_view {
  sql_table_name: `pubgdataset.sampleView`
    ;;

  dimension: description {
    type: string
    sql: ${TABLE}.description ;;
  }

  dimension: industry {
    type: string
    sql: ${TABLE}.industry ;;
  }

  dimension: level {
    type: number
    sql: ${TABLE}.level ;;
  }

  dimension: line_code {
    type: string
    sql: ${TABLE}.line_code ;;
  }

  dimension: size {
    type: string
    sql: ${TABLE}.size ;;
  }

  dimension: value {
    type: number
    sql: ${TABLE}.value ;;
  }

  measure: count {
    type: count
    drill_fields: []
  }
}
