view: sql_runner_query_multiple_test {
  derived_table: {
    sql: SELECT
          business_view.description  AS business_view_description,
          business_view.industry  AS business_view_industry,
          business_view.level  AS business_view_level,
          business_view.line_code  AS business_view_line_code
      FROM `pubgdataset.businessView`
           AS business_view
      WHERE (business_view.size ) IS NULL
      GROUP BY
          1,
          2,
          3,
          4
      ORDER BY
          1
      LIMIT 500;

      -- query to get account values
      SELECT
          account_view.bank  AS bank_col
      FROM `pubgdataset.accountView`
           AS account_view
       ;;
  }

  measure: count {
    type: count
    drill_fields: [detail*]
  }

  dimension: bank_col {
    type: string
    sql: ${TABLE}.bank_col ;;
  }

  set: detail {
    fields: [bank_col]
  }
}
