---
- dashboard: gcp_catapult
  title: GCP Catapult
  layout: newspaper
  preferred_viewer: dashboards-next
  crossfilter_enabled: true
  description: ''
  preferred_slug: JVbVs44hmW79CfLsU4aTha
  elements:
  - title: Monthly Cost by Discount Type
    name: Monthly Cost by Discount Type
    model: cloud_billing
    explore: ds_billing_export_enriched
    type: looker_column
    fields: [ds_billing_export_enriched.usage_start_date_pt_month, ds_billing_export_enriched.total_adjusted_cost,
      ds_billing_export_enriched.total_adjusted_cost_ex_promotions, ds_billing_export_enriched.total_cost,
      ds_billing_export_enriched.total_discount_amount, ds_billing_export_enriched.total_sud_amount,
      ds_billing_export_enriched.total_cud_amount, ds_billing_export_enriched.total_promotion_amount]
    fill_fields: [ds_billing_export_enriched.usage_start_date_pt_month]
    filters:
      ds_billing_export_enriched.usage_start_date_pt_month: NOT NULL
    sorts: [ds_billing_export_enriched.usage_start_date_pt_month desc]
    limit: 500
    column_limit: 50
    x_axis_gridlines: false
    y_axis_gridlines: true
    show_view_names: false
    show_y_axis_labels: true
    show_y_axis_ticks: true
    y_axis_tick_density: default
    y_axis_tick_density_custom: 5
    show_x_axis_label: true
    show_x_axis_ticks: true
    y_axis_scale_mode: linear
    x_axis_reversed: false
    y_axis_reversed: false
    plot_size_by_field: false
    trellis: ''
    stacking: normal
    limit_displayed_rows: false
    legend_position: center
    point_style: none
    show_value_labels: false
    label_density: 25
    x_axis_scale: auto
    y_axis_combined: true
    ordering: none
    show_null_labels: false
    show_totals_labels: false
    show_silhouette: false
    totals_color: "#808080"
    y_axes: [{label: '', orientation: left, series: [{axisId: ds_billing_export_enriched.total_adjusted_cost,
            id: ds_billing_export_enriched.total_adjusted_cost, name: Total
              Adjusted Cost}, {axisId: ds_billing_export_enriched.total_adjusted_cost_ex_promotions,
            id: ds_billing_export_enriched.total_adjusted_cost_ex_promotions,
            name: Total Adjusted Cost Ex Promotions}, {axisId: ds_billing_export_enriched.total_cost,
            id: ds_billing_export_enriched.total_cost, name: Total Cost},
          {axisId: ds_billing_export_enriched.total_discount_amount, id: ds_billing_export_enriched.total_discount_amount,
            name: Total Discount Amount}, {axisId: ds_billing_export_enriched.total_sud_amount,
            id: ds_billing_export_enriched.total_sud_amount, name: Total Sud
              Amount}, {axisId: ds_billing_export_enriched.total_cud_amount,
            id: ds_billing_export_enriched.total_cud_amount, name: Total Cud
              Amount}, {axisId: ds_billing_export_enriched.total_promotion_amount,
            id: ds_billing_export_enriched.total_promotion_amount, name: Total
              Promotion Amount}], showLabels: true, showValues: true, unpinAxis: false,
        tickDensity: default, tickDensityCustom: 5, type: linear}]
    x_axis_zoom: true
    y_axis_zoom: true
    series_types:
      ds_billing_export_enriched.total_adjusted_cost_ex_promotions: line
      ds_billing_export_enriched.total_cost: line
    hidden_pivots: {}
    defaults_version: 1
    show_null_points: true
    interpolation: linear
    listen:
      Service Description: ds_billing_export_enriched.service_description
      SKU Description: ds_billing_export_enriched.sku_description
      Marketplace: ds_billing_export_enriched.marketplace_inclusion
    row: 27
    col: 0
    width: 12
    height: 8
  - title: Daily Cost by Discount Type
    name: Daily Cost by Discount Type
    model: cloud_billing
    explore: ds_billing_export_enriched
    type: looker_column
    fields: [ds_billing_export_enriched.total_adjusted_cost, ds_billing_export_enriched.total_adjusted_cost_ex_promotions,
      ds_billing_export_enriched.total_cost, ds_billing_export_enriched.total_discount_amount,
      ds_billing_export_enriched.total_sud_amount, ds_billing_export_enriched.total_cud_amount,
      ds_billing_export_enriched.total_promotion_amount, ds_billing_export_enriched.usage_start_date_pt_date]
    fill_fields: [ds_billing_export_enriched.usage_start_date_pt_date]
    filters:
      ds_billing_export_enriched.usage_start_date_pt_month: NOT NULL
      ds_billing_export_enriched.project_name: ''
    sorts: [ds_billing_export_enriched.usage_start_date_pt_date desc]
    limit: 500
    column_limit: 50
    x_axis_gridlines: false
    y_axis_gridlines: true
    show_view_names: false
    show_y_axis_labels: true
    show_y_axis_ticks: true
    y_axis_tick_density: default
    y_axis_tick_density_custom: 5
    show_x_axis_label: true
    show_x_axis_ticks: true
    y_axis_scale_mode: linear
    x_axis_reversed: false
    y_axis_reversed: false
    plot_size_by_field: false
    trellis: ''
    stacking: normal
    limit_displayed_rows: false
    legend_position: center
    point_style: none
    show_value_labels: false
    label_density: 25
    x_axis_scale: auto
    y_axis_combined: true
    ordering: none
    show_null_labels: false
    show_totals_labels: false
    show_silhouette: false
    totals_color: "#808080"
    x_axis_zoom: true
    y_axis_zoom: true
    series_types:
      ds_billing_export_enriched.total_adjusted_cost_ex_promotions: line
      ds_billing_export_enriched.total_cost: line
    hidden_pivots: {}
    defaults_version: 1
    listen:
      Service Description: ds_billing_export_enriched.service_description
      SKU Description: ds_billing_export_enriched.sku_description
      Marketplace: ds_billing_export_enriched.marketplace_inclusion
    row: 27
    col: 12
    width: 12
    height: 8
  - title: Cost by Project Table
    name: Cost by Project Table
    model: cloud_billing
    explore: ds_billing_export_enriched
    type: looker_grid
    fields: [ds_billing_export_enriched.project_name, ds_billing_export_enriched.total_two_months_ago_cost,
      ds_billing_export_enriched.total_last_month_cost, ds_billing_export_enriched.total_current_month_cost,
      ds_billing_export_enriched.variance_to_last_month, ds_billing_export_enriched.variance_percentage_to_last_month]
    filters:
      ds_billing_export_enriched.project_name: ''
      ds_billing_export_enriched.invoice_month: ''
      ds_billing_export_enriched.service_description: ''
    sorts: [ds_billing_export_enriched.total_current_month_cost desc]
    limit: 10
    column_limit: 50
    total: true
    show_view_names: false
    show_row_numbers: true
    transpose: false
    truncate_text: true
    hide_totals: false
    hide_row_totals: false
    size_to_fit: true
    table_theme: white
    limit_displayed_rows: false
    enable_conditional_formatting: false
    header_text_alignment: left
    header_font_size: '12'
    rows_font_size: '12'
    conditional_formatting_include_totals: false
    conditional_formatting_include_nulls: false
    show_sql_query_menu_options: false
    show_totals: true
    show_row_totals: true
    truncate_header: false
    minimum_column_width: 75
    series_labels: {}
    series_cell_visualizations:
      ds_billing_export_enriched.total_two_months_ago_cost:
        is_active: false
      ds_billing_export_enriched.total_current_month_cost:
        is_active: true
    x_axis_gridlines: false
    y_axis_gridlines: true
    show_y_axis_labels: true
    show_y_axis_ticks: true
    y_axis_tick_density: default
    y_axis_tick_density_custom: 5
    show_x_axis_label: true
    show_x_axis_ticks: true
    y_axis_scale_mode: linear
    x_axis_reversed: false
    y_axis_reversed: false
    plot_size_by_field: false
    trellis: ''
    stacking: ''
    legend_position: center
    point_style: none
    show_value_labels: false
    label_density: 25
    x_axis_scale: auto
    y_axis_combined: true
    show_null_points: true
    interpolation: linear
    x_axis_zoom: true
    y_axis_zoom: true
    hide_legend: false
    defaults_version: 1
    hidden_pivots: {}
    listen:
      SKU Description: ds_billing_export_enriched.sku_description
      Service Description: ds_billing_export_enriched.service_description
      Current Month (Only Tables): ds_billing_export_enriched.Current_Month_Override
      Day of Month Start (Only Tables): ds_billing_export_enriched.day_of_month_start
      Day of Month End (Only Tables): ds_billing_export_enriched.day_of_month_end
      Marketplace: ds_billing_export_enriched.marketplace_inclusion
    row: 0
    col: 12
    width: 12
    height: 8
  - name: ''
    type: text
    title_text: ''
    subtitle_text: ''
    body_text: '[{"type":"h1","children":[{"text":"Cost and Discount Type Trend"}],"align":"center"}]'
    rich_content_json: '{"format":"slate"}'
    row: 25
    col: 0
    width: 24
    height: 2
  - title: Cost by SKU Table
    name: Cost by SKU Table
    model: cloud_billing
    explore: ds_billing_export_enriched
    type: looker_grid
    fields: [ds_billing_export_enriched.total_two_months_ago_cost, ds_billing_export_enriched.total_last_month_cost,
      ds_billing_export_enriched.total_current_month_cost, ds_billing_export_enriched.variance_to_last_month,
      ds_billing_export_enriched.variance_percentage_to_last_month, ds_billing_export_enriched.sku_description]
    filters:
      ds_billing_export_enriched.project_name: ''
      ds_billing_export_enriched.invoice_month: ''
      ds_billing_export_enriched.service_description: ''
    sorts: [ds_billing_export_enriched.total_current_month_cost desc]
    limit: 10
    column_limit: 50
    total: true
    show_view_names: false
    show_row_numbers: true
    transpose: false
    truncate_text: true
    hide_totals: false
    hide_row_totals: false
    size_to_fit: true
    table_theme: white
    limit_displayed_rows: false
    enable_conditional_formatting: false
    header_text_alignment: left
    header_font_size: '12'
    rows_font_size: '12'
    conditional_formatting_include_totals: false
    conditional_formatting_include_nulls: false
    show_sql_query_menu_options: false
    show_totals: true
    show_row_totals: true
    truncate_header: false
    minimum_column_width: 75
    series_cell_visualizations:
      ds_billing_export_enriched.total_two_months_ago_cost:
        is_active: false
      ds_billing_export_enriched.total_last_month_cost:
        is_active: false
      ds_billing_export_enriched.total_current_month_cost:
        is_active: true
    x_axis_gridlines: false
    y_axis_gridlines: true
    show_y_axis_labels: true
    show_y_axis_ticks: true
    y_axis_tick_density: default
    y_axis_tick_density_custom: 5
    show_x_axis_label: true
    show_x_axis_ticks: true
    y_axis_scale_mode: linear
    x_axis_reversed: false
    y_axis_reversed: false
    plot_size_by_field: false
    trellis: ''
    stacking: ''
    legend_position: center
    point_style: none
    show_value_labels: false
    label_density: 25
    x_axis_scale: auto
    y_axis_combined: true
    show_null_points: true
    interpolation: linear
    x_axis_zoom: true
    y_axis_zoom: true
    hide_legend: false
    defaults_version: 1
    hidden_pivots: {}
    listen:
      SKU Description: ds_billing_export_enriched.sku_description
      Service Description: ds_billing_export_enriched.service_description
      Current Month (Only Tables): ds_billing_export_enriched.Current_Month_Override
      Day of Month Start (Only Tables): ds_billing_export_enriched.day_of_month_start
      Day of Month End (Only Tables): ds_billing_export_enriched.day_of_month_end
      Marketplace: ds_billing_export_enriched.marketplace_inclusion
    row: 16
    col: 12
    width: 12
    height: 9
  - title: Cost by Service Table
    name: Cost by Service Table
    model: cloud_billing
    explore: ds_billing_export_enriched
    type: looker_grid
    fields: [ds_billing_export_enriched.total_two_months_ago_cost, ds_billing_export_enriched.total_last_month_cost,
      ds_billing_export_enriched.total_current_month_cost, ds_billing_export_enriched.variance_to_last_month,
      ds_billing_export_enriched.variance_percentage_to_last_month, ds_billing_export_enriched.service_description]
    filters:
      ds_billing_export_enriched.project_name: ''
      ds_billing_export_enriched.invoice_month: ''
    sorts: [ds_billing_export_enriched.total_current_month_cost desc]
    limit: 10
    column_limit: 50
    total: true
    show_view_names: false
    show_row_numbers: true
    transpose: false
    truncate_text: true
    hide_totals: false
    hide_row_totals: false
    size_to_fit: true
    table_theme: white
    limit_displayed_rows: false
    enable_conditional_formatting: false
    header_text_alignment: left
    header_font_size: '12'
    rows_font_size: '12'
    conditional_formatting_include_totals: false
    conditional_formatting_include_nulls: false
    show_sql_query_menu_options: false
    show_totals: true
    show_row_totals: true
    truncate_header: false
    minimum_column_width: 75
    series_cell_visualizations:
      ds_billing_export_enriched.total_two_months_ago_cost:
        is_active: false
      ds_billing_export_enriched.total_current_month_cost:
        is_active: true
    x_axis_gridlines: false
    y_axis_gridlines: true
    show_y_axis_labels: true
    show_y_axis_ticks: true
    y_axis_tick_density: default
    y_axis_tick_density_custom: 5
    show_x_axis_label: true
    show_x_axis_ticks: true
    y_axis_scale_mode: linear
    x_axis_reversed: false
    y_axis_reversed: false
    plot_size_by_field: false
    trellis: ''
    stacking: ''
    legend_position: center
    point_style: none
    show_value_labels: false
    label_density: 25
    x_axis_scale: auto
    y_axis_combined: true
    show_null_points: true
    interpolation: linear
    x_axis_zoom: true
    y_axis_zoom: true
    hide_legend: false
    defaults_version: 1
    hidden_pivots: {}
    listen:
      SKU Description: ds_billing_export_enriched.sku_description
      Service Description: ds_billing_export_enriched.service_description
      Current Month (Only Tables): ds_billing_export_enriched.Current_Month_Override
      Day of Month Start (Only Tables): ds_billing_export_enriched.day_of_month_start
      Day of Month End (Only Tables): ds_billing_export_enriched.day_of_month_end
      Marketplace: ds_billing_export_enriched.marketplace_inclusion
    row: 8
    col: 12
    width: 12
    height: 8
  - name: Cost by Project Graph
    title: Cost by Project Graph
    merged_queries:
    - model: cloud_billing
      explore: ds_billing_export_enriched
      type: looker_line
      fields: [ds_billing_export_enriched.usage_start_date_pt_date, ds_billing_export_enriched.project_name,
        ds_billing_export_enriched.total_cost_by_cost_metric]
      filters:
        ds_billing_export_enriched.cost_metric: adjusted^_cost
        ds_billing_export_enriched.usage_start_date_pt_date: 30 days
        ds_billing_export_enriched.project_name: ''
        ds_billing_export_enriched.sku_description: ''
        ds_billing_export_enriched.service_description: ''
      sorts: [ds_billing_export_enriched.total_cost_by_cost_metric desc]
      limit: 500
      column_limit: 10
      x_axis_gridlines: false
      y_axis_gridlines: true
      show_view_names: false
      show_y_axis_labels: true
      show_y_axis_ticks: true
      y_axis_tick_density: default
      y_axis_tick_density_custom: 5
      show_x_axis_label: true
      show_x_axis_ticks: true
      y_axis_scale_mode: linear
      x_axis_reversed: false
      y_axis_reversed: false
      plot_size_by_field: false
      trellis: ''
      stacking: ''
      limit_displayed_rows: false
      legend_position: center
      point_style: none
      show_value_labels: false
      label_density: 25
      x_axis_scale: auto
      y_axis_combined: true
      show_null_points: true
      interpolation: linear
      x_axis_zoom: true
      y_axis_zoom: true
      hide_legend: false
      defaults_version: 1
      hidden_pivots: {}
    - model: cloud_billing
      explore: ds_billing_export_enriched
      type: table
      fields: [ds_billing_export_enriched.project_name, ds_billing_export_enriched.total_cost_by_cost_metric]
      filters:
        ds_billing_export_enriched.usage_start_date_pt_date: 30 days
        ds_billing_export_enriched.cost_metric: adjusted^_cost
        ds_billing_export_enriched.project_name: ''
        ds_billing_export_enriched.service_description: ''
        ds_billing_export_enriched.sku_description: ''
      sorts: [ds_billing_export_enriched.total_cost_by_cost_metric desc]
      limit: 10
      column_limit: 50
      query_timezone: America/Phoenix
      hidden_fields: [ds_billing_export_enriched.total_cost_by_cost_metric]
      join_fields:
      - field_name: ds_billing_export_enriched.project_name
        source_field_name: ds_billing_export_enriched.project_name
    x_axis_gridlines: false
    y_axis_gridlines: true
    show_view_names: false
    y_axes: [{label: '', orientation: left, series: [{axisId: ds_billing_export_enriched.total_cost_by_cost_metric,
            id: IT Systems - ds_billing_export_enriched.total_cost_by_cost_metric,
            name: IT Systems}, {axisId: ds_billing_export_enriched.total_cost_by_cost_metric,
            id: "[Charges not specific to a project] - ds_billing_export_enriched.total_cost_by_cost_metric",
            name: "[Charges not specific to a project]"}, {axisId: ds_billing_export_enriched.total_cost_by_cost_metric,
            id: Citrix - ds_billing_export_enriched.total_cost_by_cost_metric,
            name: Citrix}, {axisId: ds_billing_export_enriched.total_cost_by_cost_metric,
            id: Carvana-Tableau - ds_billing_export_enriched.total_cost_by_cost_metric,
            name: Carvana-Tableau}, {axisId: ds_billing_export_enriched.total_cost_by_cost_metric,
            id: Carvana-Quintiq - ds_billing_export_enriched.total_cost_by_cost_metric,
            name: Carvana-Quintiq}, {axisId: ds_billing_export_enriched.total_cost_by_cost_metric,
            id: carvana-ngcp-prod - ds_billing_export_enriched.total_cost_by_cost_metric,
            name: carvana-ngcp-prod}, {axisId: ds_billing_export_enriched.total_cost_by_cost_metric,
            id: DSS Purchasing - ds_billing_export_enriched.total_cost_by_cost_metric,
            name: DSS Purchasing}, {axisId: ds_billing_export_enriched.total_cost_by_cost_metric,
            id: propel-dev1 - ds_billing_export_enriched.total_cost_by_cost_metric,
            name: propel-dev1}, {axisId: ds_billing_export_enriched.total_cost_by_cost_metric,
            id: Managed Systems - ds_billing_export_enriched.total_cost_by_cost_metric,
            name: Managed Systems}, {axisId: ds_billing_export_enriched.total_cost_by_cost_metric,
            id: crv-dss-gurobi-dev - ds_billing_export_enriched.total_cost_by_cost_metric,
            name: crv-dss-gurobi-dev}], showLabels: false, showValues: true, unpinAxis: false,
        tickDensity: default, type: linear}]
    show_y_axis_labels: true
    show_y_axis_ticks: true
    y_axis_tick_density: default
    y_axis_tick_density_custom: 5
    show_x_axis_label: false
    show_x_axis_ticks: true
    y_axis_scale_mode: linear
    x_axis_reversed: false
    y_axis_reversed: false
    plot_size_by_field: false
    x_axis_zoom: true
    y_axis_zoom: true
    trellis: ''
    stacking: ''
    limit_displayed_rows: false
    legend_position: center
    series_types: {}
    point_style: none
    show_value_labels: false
    label_density: 25
    x_axis_scale: auto
    y_axis_combined: true
    show_null_points: true
    interpolation: linear
    hidden_fields: [q1_ds_billing_export_enriched.total_cost_by_cost_metric]
    hidden_pivots: {}
    type: looker_line
    pivots: [ds_billing_export_enriched.project_name]
    column_limit: 10
    listen:
    - SKU Description: ds_billing_export_enriched.sku_description
      Service Description: ds_billing_export_enriched.service_description
      Marketplace: ds_billing_export_enriched.marketplace_inclusion
    - SKU Description: ds_billing_export_enriched.sku_description
      Service Description: ds_billing_export_enriched.service_description
      Marketplace: ds_billing_export_enriched.marketplace_inclusion
    row: 0
    col: 0
    width: 12
    height: 8
  - name: Cost by Service Graph
    title: Cost by Service Graph
    merged_queries:
    - model: cloud_billing
      explore: ds_billing_export_enriched
      type: looker_line
      fields: [ds_billing_export_enriched.usage_start_date_pt_date, ds_billing_export_enriched.total_cost_by_cost_metric,
        ds_billing_export_enriched.service_description]
      filters:
        ds_billing_export_enriched.cost_metric: adjusted^_cost
        ds_billing_export_enriched.usage_start_date_pt_date: 30 days
        ds_billing_export_enriched.project_name: ''
        ds_billing_export_enriched.sku_description: ''
        ds_billing_export_enriched.service_description: ''
      sorts: [ds_billing_export_enriched.total_cost_by_cost_metric desc]
      limit: 500
      column_limit: 50
      x_axis_gridlines: false
      y_axis_gridlines: true
      show_view_names: false
      show_y_axis_labels: true
      show_y_axis_ticks: true
      y_axis_tick_density: default
      y_axis_tick_density_custom: 5
      show_x_axis_label: true
      show_x_axis_ticks: true
      y_axis_scale_mode: linear
      x_axis_reversed: false
      y_axis_reversed: false
      plot_size_by_field: false
      trellis: ''
      stacking: ''
      limit_displayed_rows: false
      legend_position: center
      point_style: none
      show_value_labels: false
      label_density: 25
      x_axis_scale: auto
      y_axis_combined: true
      show_null_points: true
      interpolation: linear
      x_axis_zoom: true
      y_axis_zoom: true
      hide_legend: false
      defaults_version: 1
      hidden_pivots: {}
    - model: cloud_billing
      explore: ds_billing_export_enriched
      type: table
      fields: [ds_billing_export_enriched.total_cost_by_cost_metric, ds_billing_export_enriched.service_description]
      filters:
        ds_billing_export_enriched.usage_start_date_pt_date: 30 days
        ds_billing_export_enriched.cost_metric: adjusted^_cost
        ds_billing_export_enriched.project_name: ''
        ds_billing_export_enriched.sku_description: ''
        ds_billing_export_enriched.service_description: ''
      sorts: [ds_billing_export_enriched.total_cost_by_cost_metric desc]
      limit: 10
      column_limit: 50
      query_timezone: America/Phoenix
      hidden_fields: [ds_billing_export_enriched.total_cost_by_cost_metric]
      join_fields:
      - field_name: ds_billing_export_enriched.service_description
        source_field_name: ds_billing_export_enriched.service_description
    x_axis_gridlines: false
    y_axis_gridlines: true
    show_view_names: false
    y_axes: [{label: '', orientation: left, series: [{axisId: ds_billing_export_enriched.total_cost_by_cost_metric,
            id: Compute Engine - ds_billing_export_enriched.total_cost_by_cost_metric,
            name: Compute Engine}, {axisId: ds_billing_export_enriched.total_cost_by_cost_metric,
            id: iconik - ds_billing_export_enriched.total_cost_by_cost_metric,
            name: iconik}, {axisId: ds_billing_export_enriched.total_cost_by_cost_metric,
            id: Looker - ds_billing_export_enriched.total_cost_by_cost_metric,
            name: Looker}, {axisId: ds_billing_export_enriched.total_cost_by_cost_metric,
            id: Support - ds_billing_export_enriched.total_cost_by_cost_metric,
            name: Support}, {axisId: ds_billing_export_enriched.total_cost_by_cost_metric,
            id: BigQuery - ds_billing_export_enriched.total_cost_by_cost_metric,
            name: BigQuery}, {axisId: ds_billing_export_enriched.total_cost_by_cost_metric,
            id: Cloud Storage - ds_billing_export_enriched.total_cost_by_cost_metric,
            name: Cloud Storage}, {axisId: ds_billing_export_enriched.total_cost_by_cost_metric,
            id: Cloud SQL - ds_billing_export_enriched.total_cost_by_cost_metric,
            name: Cloud SQL}, {axisId: ds_billing_export_enriched.total_cost_by_cost_metric,
            id: Networking - ds_billing_export_enriched.total_cost_by_cost_metric,
            name: Networking}, {axisId: ds_billing_export_enriched.total_cost_by_cost_metric,
            id: App Engine - ds_billing_export_enriched.total_cost_by_cost_metric,
            name: App Engine}, {axisId: ds_billing_export_enriched.total_cost_by_cost_metric,
            id: Cloud Logging - ds_billing_export_enriched.total_cost_by_cost_metric,
            name: Cloud Logging}], showLabels: false, showValues: true, unpinAxis: false,
        tickDensity: default, tickDensityCustom: 5, type: linear}]
    show_y_axis_labels: true
    show_y_axis_ticks: true
    y_axis_tick_density: default
    y_axis_tick_density_custom: 5
    show_x_axis_label: false
    show_x_axis_ticks: true
    y_axis_scale_mode: linear
    x_axis_reversed: false
    y_axis_reversed: false
    plot_size_by_field: false
    x_axis_zoom: true
    y_axis_zoom: true
    trellis: ''
    stacking: ''
    limit_displayed_rows: false
    hide_legend: false
    legend_position: center
    series_types: {}
    point_style: none
    show_value_labels: false
    label_density: 25
    x_axis_scale: auto
    y_axis_combined: true
    show_null_points: true
    interpolation: linear
    hidden_fields: [q1_ds_billing_export_enriched.total_cost_by_cost_metric]
    hidden_pivots: {}
    type: looker_line
    pivots: [ds_billing_export_enriched.service_description, ds_billing_export_enriched.service_description]
    column_limit: 50
    listen:
    - SKU Description: ds_billing_export_enriched.sku_description
      Service Description: ds_billing_export_enriched.service_description
      Marketplace: ds_billing_export_enriched.marketplace_inclusion
    - SKU Description: ds_billing_export_enriched.sku_description
      Service Description: ds_billing_export_enriched.service_description
      Marketplace: ds_billing_export_enriched.marketplace_inclusion
    row: 8
    col: 0
    width: 12
    height: 8
  - name: Cost by SKU Graph
    title: Cost by SKU Graph
    merged_queries:
    - model: cloud_billing
      explore: ds_billing_export_enriched
      type: looker_line
      fields: [ds_billing_export_enriched.usage_start_date_pt_date, ds_billing_export_enriched.total_cost_by_cost_metric,
        ds_billing_export_enriched.sku_description]
      filters:
        ds_billing_export_enriched.cost_metric: adjusted^_cost
        ds_billing_export_enriched.usage_start_date_pt_date: 30 days
        ds_billing_export_enriched.project_name: ''
        ds_billing_export_enriched.sku_description: ''
        ds_billing_export_enriched.service_description: ''
      sorts: [ds_billing_export_enriched.total_cost_by_cost_metric desc]
      limit: 500
      column_limit: 10
      x_axis_gridlines: false
      y_axis_gridlines: true
      show_view_names: false
      show_y_axis_labels: true
      show_y_axis_ticks: true
      y_axis_tick_density: default
      y_axis_tick_density_custom: 5
      show_x_axis_label: true
      show_x_axis_ticks: true
      y_axis_scale_mode: linear
      x_axis_reversed: false
      y_axis_reversed: false
      plot_size_by_field: false
      trellis: ''
      stacking: ''
      limit_displayed_rows: false
      legend_position: center
      point_style: none
      show_value_labels: false
      label_density: 25
      x_axis_scale: auto
      y_axis_combined: true
      show_null_points: true
      interpolation: linear
      x_axis_zoom: true
      y_axis_zoom: true
      hide_legend: false
      defaults_version: 1
      hidden_pivots: {}
    - model: cloud_billing
      explore: ds_billing_export_enriched
      type: table
      fields: [ds_billing_export_enriched.total_cost_by_cost_metric, ds_billing_export_enriched.sku_description]
      filters:
        ds_billing_export_enriched.usage_start_date_pt_date: 30 days
        ds_billing_export_enriched.cost_metric: adjusted^_cost
        ds_billing_export_enriched.project_name: ''
        ds_billing_export_enriched.service_description: ''
        ds_billing_export_enriched.sku_description: ''
      sorts: [ds_billing_export_enriched.total_cost_by_cost_metric desc]
      limit: 10
      column_limit: 50
      query_timezone: America/Phoenix
      hidden_fields: [ds_billing_export_enriched.total_cost_by_cost_metric]
      join_fields:
      - field_name: ds_billing_export_enriched.sku_description
        source_field_name: ds_billing_export_enriched.sku_description
    x_axis_gridlines: false
    y_axis_gridlines: true
    show_view_names: false
    y_axes: [{label: '', orientation: left, series: [{axisId: ds_billing_export_enriched.total_cost_by_cost_metric,
            id: ds_billing_export_enriched.total_cost_by_cost_metric, name: Total
              Cost By Cost Metric}], showLabels: false, showValues: true, unpinAxis: false,
        tickDensity: default, type: linear}]
    show_y_axis_labels: true
    show_y_axis_ticks: true
    y_axis_tick_density: default
    y_axis_tick_density_custom: 5
    show_x_axis_label: false
    show_x_axis_ticks: true
    y_axis_scale_mode: linear
    x_axis_reversed: false
    y_axis_reversed: false
    plot_size_by_field: false
    x_axis_zoom: true
    y_axis_zoom: true
    trellis: ''
    stacking: ''
    limit_displayed_rows: false
    legend_position: center
    series_types: {}
    point_style: none
    show_value_labels: false
    label_density: 25
    x_axis_scale: auto
    y_axis_combined: true
    show_null_points: true
    interpolation: linear
    hidden_fields: [q1_ds_billing_export_enriched.total_cost_by_cost_metric]
    hidden_pivots: {}
    type: looker_line
    pivots: [ds_billing_export_enriched.sku_description]
    sorts: [ds_billing_export_enriched.sku_description desc]
    column_limit: 10
    listen:
    - SKU Description: ds_billing_export_enriched.sku_description
      Service Description: ds_billing_export_enriched.service_description
      Marketplace: ds_billing_export_enriched.marketplace_inclusion
    - SKU Description: ds_billing_export_enriched.sku_description
      Service Description: ds_billing_export_enriched.service_description
      Marketplace: ds_billing_export_enriched.marketplace_inclusion
    row: 16
    col: 0
    width: 12
    height: 9
  - name: Monthly by GCP Project Name
    title: Monthly by GCP Project Name
    merged_queries:
    - model: cloud_billing
      explore: ds_billing_export_enriched
      type: looker_column
      fields: [ds_billing_export_enriched.usage_start_date_pt_month, ds_billing_export_enriched.project_name,
        ds_billing_export_enriched.total_cost_by_cost_metric]
      filters:
        ds_billing_export_enriched.project_name: ''
        ds_billing_export_enriched.sku_description: ''
        ds_billing_export_enriched.service_description: ''
        ds_billing_export_enriched.cost_metric: adjusted^_cost
      sorts: [ds_billing_export_enriched.total_cost_by_cost_metric desc]
      limit: 500
      column_limit: 10
      x_axis_gridlines: false
      y_axis_gridlines: true
      show_view_names: false
      show_y_axis_labels: true
      show_y_axis_ticks: true
      y_axis_tick_density: default
      y_axis_tick_density_custom: 5
      show_x_axis_label: true
      show_x_axis_ticks: true
      y_axis_scale_mode: linear
      x_axis_reversed: false
      y_axis_reversed: false
      plot_size_by_field: false
      trellis: ''
      stacking: normal
      limit_displayed_rows: false
      legend_position: center
      point_style: none
      show_value_labels: false
      label_density: 25
      x_axis_scale: auto
      y_axis_combined: true
      ordering: none
      show_null_labels: false
      show_totals_labels: false
      show_silhouette: false
      totals_color: "#808080"
      x_axis_zoom: true
      y_axis_zoom: true
      hidden_pivots: {}
      defaults_version: 1
    - model: cloud_billing
      explore: ds_billing_export_enriched
      type: looker_column
      fields: [ds_billing_export_enriched.total_cost_by_cost_metric, ds_billing_export_enriched.project_name]
      filters:
        ds_billing_export_enriched.cost_metric: adjusted^_cost
        ds_billing_export_enriched.project_name: ''
        ds_billing_export_enriched.service_description: ''
        ds_billing_export_enriched.sku_description: ''
      sorts: [ds_billing_export_enriched.total_cost_by_cost_metric desc 0]
      limit: 10
      column_limit: 50
      query_timezone: America/Phoenix
      x_axis_gridlines: false
      y_axis_gridlines: true
      show_view_names: false
      show_y_axis_labels: true
      show_y_axis_ticks: true
      y_axis_tick_density: default
      y_axis_tick_density_custom: 5
      show_x_axis_label: true
      show_x_axis_ticks: true
      y_axis_scale_mode: linear
      x_axis_reversed: false
      y_axis_reversed: false
      plot_size_by_field: false
      trellis: ''
      stacking: ''
      limit_displayed_rows: false
      legend_position: center
      point_style: none
      show_value_labels: false
      label_density: 25
      x_axis_scale: auto
      y_axis_combined: true
      ordering: none
      show_null_labels: false
      show_totals_labels: false
      show_silhouette: false
      totals_color: "#808080"
      defaults_version: 1
      join_fields:
      - field_name: ds_billing_export_enriched.project_name
        source_field_name: ds_billing_export_enriched.project_name
    x_axis_gridlines: false
    y_axis_gridlines: true
    show_view_names: false
    y_axes: [{label: '', orientation: left, series: [{axisId: " Project Tiger 1 -\
              \ ds_billing_export_enriched.total_cost_by_cost_metric", id: " Project\
              \ Tiger 1 - ds_billing_export_enriched.total_cost_by_cost_metric",
            name: " Project Tiger 1"}, {axisId: "[Charges not specific to a project]\
              \ - ds_billing_export_enriched.total_cost_by_cost_metric", id: "[Charges\
              \ not specific to a project] - ds_billing_export_enriched.total_cost_by_cost_metric",
            name: "[Charges not specific to a project]"}, {axisId: adesa-data-science
              - ds_billing_export_enriched.total_cost_by_cost_metric, id: adesa-data-science
              - ds_billing_export_enriched.total_cost_by_cost_metric, name: adesa-data-science},
          {axisId: API Only - ds_billing_export_enriched.total_cost_by_cost_metric,
            id: API Only - ds_billing_export_enriched.total_cost_by_cost_metric,
            name: API Only}, {axisId: carvana-ga4-bigquery - ds_billing_export_enriched.total_cost_by_cost_metric,
            id: carvana-ga4-bigquery - ds_billing_export_enriched.total_cost_by_cost_metric,
            name: carvana-ga4-bigquery}, {axisId: carvana-ngcp-dev - ds_billing_export_enriched.total_cost_by_cost_metric,
            id: carvana-ngcp-dev - ds_billing_export_enriched.total_cost_by_cost_metric,
            name: carvana-ngcp-dev}, {axisId: carvana-ngcp-ds - ds_billing_export_enriched.total_cost_by_cost_metric,
            id: carvana-ngcp-ds - ds_billing_export_enriched.total_cost_by_cost_metric,
            name: carvana-ngcp-ds}, {axisId: carvana-ngcp-prod - ds_billing_export_enriched.total_cost_by_cost_metric,
            id: carvana-ngcp-prod - ds_billing_export_enriched.total_cost_by_cost_metric,
            name: carvana-ngcp-prod}, {axisId: carvana-ngcp-test - ds_billing_export_enriched.total_cost_by_cost_metric,
            id: carvana-ngcp-test - ds_billing_export_enriched.total_cost_by_cost_metric,
            name: carvana-ngcp-test}, {axisId: Carvana-Quintiq - ds_billing_export_enriched.total_cost_by_cost_metric,
            id: Carvana-Quintiq - ds_billing_export_enriched.total_cost_by_cost_metric,
            name: Carvana-Quintiq}, {axisId: carvana-service-now - ds_billing_export_enriched.total_cost_by_cost_metric,
            id: carvana-service-now - ds_billing_export_enriched.total_cost_by_cost_metric,
            name: carvana-service-now}, {axisId: carvana-specialprojects-dev - ds_billing_export_enriched.total_cost_by_cost_metric,
            id: carvana-specialprojects-dev - ds_billing_export_enriched.total_cost_by_cost_metric,
            name: carvana-specialprojects-dev}, {axisId: carvana-specialprojects-ds
              - ds_billing_export_enriched.total_cost_by_cost_metric, id: carvana-specialprojects-ds
              - ds_billing_export_enriched.total_cost_by_cost_metric, name: carvana-specialprojects-ds},
          {axisId: carvana-specialprojects-prod - ds_billing_export_enriched.total_cost_by_cost_metric,
            id: carvana-specialprojects-prod - ds_billing_export_enriched.total_cost_by_cost_metric,
            name: carvana-specialprojects-prod}, {axisId: carvana-specialprojects-test
              - ds_billing_export_enriched.total_cost_by_cost_metric, id: carvana-specialprojects-test
              - ds_billing_export_enriched.total_cost_by_cost_metric, name: carvana-specialprojects-test},
          {axisId: Carvana-Tableau - ds_billing_export_enriched.total_cost_by_cost_metric,
            id: Carvana-Tableau - ds_billing_export_enriched.total_cost_by_cost_metric,
            name: Carvana-Tableau}, {axisId: Carvana-TMW - ds_billing_export_enriched.total_cost_by_cost_metric,
            id: Carvana-TMW - ds_billing_export_enriched.total_cost_by_cost_metric,
            name: Carvana-TMW}, {axisId: Citrix - ds_billing_export_enriched.total_cost_by_cost_metric,
            id: Citrix - ds_billing_export_enriched.total_cost_by_cost_metric,
            name: Citrix}, {axisId: crv-dss-gurobi-dev - ds_billing_export_enriched.total_cost_by_cost_metric,
            id: crv-dss-gurobi-dev - ds_billing_export_enriched.total_cost_by_cost_metric,
            name: crv-dss-gurobi-dev}, {axisId: Distance Matrix API - ds_billing_export_enriched.total_cost_by_cost_metric,
            id: Distance Matrix API - ds_billing_export_enriched.total_cost_by_cost_metric,
            name: Distance Matrix API}, {axisId: DSS Purchasing - ds_billing_export_enriched.total_cost_by_cost_metric,
            id: DSS Purchasing - ds_billing_export_enriched.total_cost_by_cost_metric,
            name: DSS Purchasing}, {axisId: IT Systems - ds_billing_export_enriched.total_cost_by_cost_metric,
            id: IT Systems - ds_billing_export_enriched.total_cost_by_cost_metric,
            name: IT Systems}, {axisId: IT-Gurobi - ds_billing_export_enriched.total_cost_by_cost_metric,
            id: IT-Gurobi - ds_billing_export_enriched.total_cost_by_cost_metric,
            name: IT-Gurobi}, {axisId: Managed Systems - ds_billing_export_enriched.total_cost_by_cost_metric,
            id: Managed Systems - ds_billing_export_enriched.total_cost_by_cost_metric,
            name: Managed Systems}, {axisId: nosidelines - ds_billing_export_enriched.total_cost_by_cost_metric,
            id: nosidelines - ds_billing_export_enriched.total_cost_by_cost_metric,
            name: nosidelines}, {axisId: Predictive Modeling - ds_billing_export_enriched.total_cost_by_cost_metric,
            id: Predictive Modeling - ds_billing_export_enriched.total_cost_by_cost_metric,
            name: Predictive Modeling}, {axisId: propel-dev1 - ds_billing_export_enriched.total_cost_by_cost_metric,
            id: propel-dev1 - ds_billing_export_enriched.total_cost_by_cost_metric,
            name: propel-dev1}, {axisId: propel-front-prod - ds_billing_export_enriched.total_cost_by_cost_metric,
            id: propel-front-prod - ds_billing_export_enriched.total_cost_by_cost_metric,
            name: propel-front-prod}, {axisId: Salesforce - ds_billing_export_enriched.total_cost_by_cost_metric,
            id: Salesforce - ds_billing_export_enriched.total_cost_by_cost_metric,
            name: Salesforce}, {axisId: TS-Infosec-Ext-Logs - ds_billing_export_enriched.total_cost_by_cost_metric,
            id: TS-Infosec-Ext-Logs - ds_billing_export_enriched.total_cost_by_cost_metric,
            name: TS-Infosec-Ext-Logs}, {axisId: TS-Infosec-Logs - ds_billing_export_enriched.total_cost_by_cost_metric,
            id: TS-Infosec-Logs - ds_billing_export_enriched.total_cost_by_cost_metric,
            name: TS-Infosec-Logs}], showLabels: false, showValues: true, unpinAxis: false,
        tickDensity: default, tickDensityCustom: 5, type: linear}]
    show_y_axis_labels: true
    show_y_axis_ticks: true
    y_axis_tick_density: default
    y_axis_tick_density_custom: 5
    show_x_axis_label: false
    show_x_axis_ticks: true
    y_axis_scale_mode: linear
    x_axis_reversed: false
    y_axis_reversed: false
    plot_size_by_field: false
    x_axis_zoom: true
    y_axis_zoom: true
    trellis: ''
    stacking: normal
    limit_displayed_rows: false
    legend_position: center
    series_types: {}
    point_style: none
    show_value_labels: false
    label_density: 25
    x_axis_scale: auto
    y_axis_combined: true
    ordering: none
    show_null_labels: false
    show_totals_labels: false
    show_silhouette: false
    totals_color: "#808080"
    type: looker_column
    hidden_fields: [q1_ds_billing_export_enriched.total_cost_by_cost_metric]
    hidden_pivots: {}
    pivots: [ds_billing_export_enriched.project_name]
    sorts: [ds_billing_export_enriched.total_cost_by_cost_metric desc 0, ds_billing_export_enriched.project_name]
    column_limit: 50
    listen:
    - SKU Description: ds_billing_export_enriched.sku_description
      Service Description: ds_billing_export_enriched.service_description
      Current Month (Only Tables): ds_billing_export_enriched.Current_Month_Override
      Marketplace: ds_billing_export_enriched.marketplace_inclusion
    - SKU Description: ds_billing_export_enriched.sku_description
      Service Description: ds_billing_export_enriched.service_description
      Current Month (Only Tables): ds_billing_export_enriched.Current_Month_Override
      Marketplace: ds_billing_export_enriched.marketplace_inclusion
    row: 35
    col: 0
    width: 12
    height: 8
  - name: Daily by GCP Project
    title: Daily by GCP Project
    merged_queries:
    - model: cloud_billing
      explore: ds_billing_export_enriched
      type: looker_column
      fields: [ds_billing_export_enriched.project_name, ds_billing_export_enriched.total_cost_by_cost_metric,
        ds_billing_export_enriched.usage_start_date_pt_date]
      filters:
        ds_billing_export_enriched.project_name: ''
        ds_billing_export_enriched.sku_description: ''
        ds_billing_export_enriched.service_description: ''
        ds_billing_export_enriched.cost_metric: adjusted^_cost
      sorts: [ds_billing_export_enriched.total_cost_by_cost_metric desc]
      limit: 500
      column_limit: 10
      x_axis_gridlines: false
      y_axis_gridlines: true
      show_view_names: false
      show_y_axis_labels: true
      show_y_axis_ticks: true
      y_axis_tick_density: default
      y_axis_tick_density_custom: 5
      show_x_axis_label: true
      show_x_axis_ticks: true
      y_axis_scale_mode: linear
      x_axis_reversed: false
      y_axis_reversed: false
      plot_size_by_field: false
      trellis: ''
      stacking: normal
      limit_displayed_rows: false
      legend_position: center
      point_style: none
      show_value_labels: false
      label_density: 25
      x_axis_scale: auto
      y_axis_combined: true
      ordering: none
      show_null_labels: false
      show_totals_labels: false
      show_silhouette: false
      totals_color: "#808080"
      x_axis_zoom: true
      y_axis_zoom: true
      hidden_pivots: {}
      defaults_version: 1
    - model: cloud_billing
      explore: ds_billing_export_enriched
      type: looker_column
      fields: [ds_billing_export_enriched.total_cost_by_cost_metric, ds_billing_export_enriched.project_name]
      filters:
        ds_billing_export_enriched.cost_metric: adjusted^_cost
        ds_billing_export_enriched.project_name: ''
        ds_billing_export_enriched.service_description: ''
        ds_billing_export_enriched.sku_description: ''
      sorts: [ds_billing_export_enriched.total_cost_by_cost_metric desc 0]
      limit: 10
      column_limit: 50
      query_timezone: America/Phoenix
      x_axis_gridlines: false
      y_axis_gridlines: true
      show_view_names: false
      show_y_axis_labels: true
      show_y_axis_ticks: true
      y_axis_tick_density: default
      y_axis_tick_density_custom: 5
      show_x_axis_label: true
      show_x_axis_ticks: true
      y_axis_scale_mode: linear
      x_axis_reversed: false
      y_axis_reversed: false
      plot_size_by_field: false
      trellis: ''
      stacking: ''
      limit_displayed_rows: false
      legend_position: center
      point_style: none
      show_value_labels: false
      label_density: 25
      x_axis_scale: auto
      y_axis_combined: true
      ordering: none
      show_null_labels: false
      show_totals_labels: false
      show_silhouette: false
      totals_color: "#808080"
      defaults_version: 1
      join_fields:
      - field_name: ds_billing_export_enriched.project_name
        source_field_name: ds_billing_export_enriched.project_name
    x_axis_gridlines: false
    y_axis_gridlines: true
    show_view_names: false
    y_axes: [{label: '', orientation: left, series: [{axisId: " Project Tiger 1 -\
              \ ds_billing_export_enriched.total_cost_by_cost_metric", id: " Project\
              \ Tiger 1 - ds_billing_export_enriched.total_cost_by_cost_metric",
            name: " Project Tiger 1"}, {axisId: "[Charges not specific to a project]\
              \ - ds_billing_export_enriched.total_cost_by_cost_metric", id: "[Charges\
              \ not specific to a project] - ds_billing_export_enriched.total_cost_by_cost_metric",
            name: "[Charges not specific to a project]"}, {axisId: adesa-data-science
              - ds_billing_export_enriched.total_cost_by_cost_metric, id: adesa-data-science
              - ds_billing_export_enriched.total_cost_by_cost_metric, name: adesa-data-science},
          {axisId: API Only - ds_billing_export_enriched.total_cost_by_cost_metric,
            id: API Only - ds_billing_export_enriched.total_cost_by_cost_metric,
            name: API Only}, {axisId: carvana-ga4-bigquery - ds_billing_export_enriched.total_cost_by_cost_metric,
            id: carvana-ga4-bigquery - ds_billing_export_enriched.total_cost_by_cost_metric,
            name: carvana-ga4-bigquery}, {axisId: carvana-ngcp-dev - ds_billing_export_enriched.total_cost_by_cost_metric,
            id: carvana-ngcp-dev - ds_billing_export_enriched.total_cost_by_cost_metric,
            name: carvana-ngcp-dev}, {axisId: carvana-ngcp-ds - ds_billing_export_enriched.total_cost_by_cost_metric,
            id: carvana-ngcp-ds - ds_billing_export_enriched.total_cost_by_cost_metric,
            name: carvana-ngcp-ds}, {axisId: carvana-ngcp-prod - ds_billing_export_enriched.total_cost_by_cost_metric,
            id: carvana-ngcp-prod - ds_billing_export_enriched.total_cost_by_cost_metric,
            name: carvana-ngcp-prod}, {axisId: carvana-ngcp-test - ds_billing_export_enriched.total_cost_by_cost_metric,
            id: carvana-ngcp-test - ds_billing_export_enriched.total_cost_by_cost_metric,
            name: carvana-ngcp-test}, {axisId: Carvana-Quintiq - ds_billing_export_enriched.total_cost_by_cost_metric,
            id: Carvana-Quintiq - ds_billing_export_enriched.total_cost_by_cost_metric,
            name: Carvana-Quintiq}, {axisId: carvana-service-now - ds_billing_export_enriched.total_cost_by_cost_metric,
            id: carvana-service-now - ds_billing_export_enriched.total_cost_by_cost_metric,
            name: carvana-service-now}, {axisId: carvana-specialprojects-dev - ds_billing_export_enriched.total_cost_by_cost_metric,
            id: carvana-specialprojects-dev - ds_billing_export_enriched.total_cost_by_cost_metric,
            name: carvana-specialprojects-dev}, {axisId: carvana-specialprojects-ds
              - ds_billing_export_enriched.total_cost_by_cost_metric, id: carvana-specialprojects-ds
              - ds_billing_export_enriched.total_cost_by_cost_metric, name: carvana-specialprojects-ds},
          {axisId: carvana-specialprojects-prod - ds_billing_export_enriched.total_cost_by_cost_metric,
            id: carvana-specialprojects-prod - ds_billing_export_enriched.total_cost_by_cost_metric,
            name: carvana-specialprojects-prod}, {axisId: carvana-specialprojects-test
              - ds_billing_export_enriched.total_cost_by_cost_metric, id: carvana-specialprojects-test
              - ds_billing_export_enriched.total_cost_by_cost_metric, name: carvana-specialprojects-test},
          {axisId: Carvana-Tableau - ds_billing_export_enriched.total_cost_by_cost_metric,
            id: Carvana-Tableau - ds_billing_export_enriched.total_cost_by_cost_metric,
            name: Carvana-Tableau}, {axisId: Carvana-TMW - ds_billing_export_enriched.total_cost_by_cost_metric,
            id: Carvana-TMW - ds_billing_export_enriched.total_cost_by_cost_metric,
            name: Carvana-TMW}, {axisId: Citrix - ds_billing_export_enriched.total_cost_by_cost_metric,
            id: Citrix - ds_billing_export_enriched.total_cost_by_cost_metric,
            name: Citrix}, {axisId: crv-dss-gurobi-dev - ds_billing_export_enriched.total_cost_by_cost_metric,
            id: crv-dss-gurobi-dev - ds_billing_export_enriched.total_cost_by_cost_metric,
            name: crv-dss-gurobi-dev}, {axisId: Distance Matrix API - ds_billing_export_enriched.total_cost_by_cost_metric,
            id: Distance Matrix API - ds_billing_export_enriched.total_cost_by_cost_metric,
            name: Distance Matrix API}, {axisId: DSS Purchasing - ds_billing_export_enriched.total_cost_by_cost_metric,
            id: DSS Purchasing - ds_billing_export_enriched.total_cost_by_cost_metric,
            name: DSS Purchasing}, {axisId: IT Systems - ds_billing_export_enriched.total_cost_by_cost_metric,
            id: IT Systems - ds_billing_export_enriched.total_cost_by_cost_metric,
            name: IT Systems}, {axisId: IT-Gurobi - ds_billing_export_enriched.total_cost_by_cost_metric,
            id: IT-Gurobi - ds_billing_export_enriched.total_cost_by_cost_metric,
            name: IT-Gurobi}, {axisId: Managed Systems - ds_billing_export_enriched.total_cost_by_cost_metric,
            id: Managed Systems - ds_billing_export_enriched.total_cost_by_cost_metric,
            name: Managed Systems}, {axisId: nosidelines - ds_billing_export_enriched.total_cost_by_cost_metric,
            id: nosidelines - ds_billing_export_enriched.total_cost_by_cost_metric,
            name: nosidelines}, {axisId: Predictive Modeling - ds_billing_export_enriched.total_cost_by_cost_metric,
            id: Predictive Modeling - ds_billing_export_enriched.total_cost_by_cost_metric,
            name: Predictive Modeling}, {axisId: propel-dev1 - ds_billing_export_enriched.total_cost_by_cost_metric,
            id: propel-dev1 - ds_billing_export_enriched.total_cost_by_cost_metric,
            name: propel-dev1}, {axisId: propel-front-prod - ds_billing_export_enriched.total_cost_by_cost_metric,
            id: propel-front-prod - ds_billing_export_enriched.total_cost_by_cost_metric,
            name: propel-front-prod}, {axisId: Salesforce - ds_billing_export_enriched.total_cost_by_cost_metric,
            id: Salesforce - ds_billing_export_enriched.total_cost_by_cost_metric,
            name: Salesforce}, {axisId: TS-Infosec-Ext-Logs - ds_billing_export_enriched.total_cost_by_cost_metric,
            id: TS-Infosec-Ext-Logs - ds_billing_export_enriched.total_cost_by_cost_metric,
            name: TS-Infosec-Ext-Logs}, {axisId: TS-Infosec-Logs - ds_billing_export_enriched.total_cost_by_cost_metric,
            id: TS-Infosec-Logs - ds_billing_export_enriched.total_cost_by_cost_metric,
            name: TS-Infosec-Logs}], showLabels: false, showValues: true, unpinAxis: false,
        tickDensity: default, tickDensityCustom: 5, type: linear}]
    show_y_axis_labels: true
    show_y_axis_ticks: true
    y_axis_tick_density: default
    y_axis_tick_density_custom: 5
    show_x_axis_label: false
    show_x_axis_ticks: true
    y_axis_scale_mode: linear
    x_axis_reversed: false
    y_axis_reversed: false
    plot_size_by_field: false
    x_axis_zoom: true
    y_axis_zoom: true
    trellis: ''
    stacking: normal
    limit_displayed_rows: false
    legend_position: center
    series_types: {}
    point_style: none
    show_value_labels: false
    label_density: 25
    x_axis_scale: auto
    y_axis_combined: true
    ordering: none
    show_null_labels: false
    show_totals_labels: false
    show_silhouette: false
    totals_color: "#808080"
    type: looker_column
    hidden_fields: [q1_ds_billing_export_enriched.total_cost_by_cost_metric]
    hidden_pivots: {}
    pivots: [ds_billing_export_enriched.project_name]
    sorts: [ds_billing_export_enriched.total_cost_by_cost_metric desc 0, ds_billing_export_enriched.project_name]
    column_limit: 50
    listen:
    - SKU Description: ds_billing_export_enriched.sku_description
      Service Description: ds_billing_export_enriched.service_description
      Current Month (Only Tables): ds_billing_export_enriched.Current_Month_Override
      Marketplace: ds_billing_export_enriched.marketplace_inclusion
    - SKU Description: ds_billing_export_enriched.sku_description
      Service Description: ds_billing_export_enriched.service_description
      Current Month (Only Tables): ds_billing_export_enriched.Current_Month_Override
      Marketplace: ds_billing_export_enriched.marketplace_inclusion
    row: 35
    col: 12
    width: 12
    height: 8
  - name: Monthly by GCP Project Name (2)
    title: Monthly by GCP Project Name
    merged_queries:
    - model: cloud_billing
      explore: ds_billing_export_enriched
      type: looker_column
      fields: [ds_billing_export_enriched.usage_start_date_pt_month, ds_billing_export_enriched.project_name,
        ds_billing_export_enriched.total_cost_by_cost_metric]
      filters:
        ds_billing_export_enriched.project_name: ''
        ds_billing_export_enriched.sku_description: ''
        ds_billing_export_enriched.service_description: ''
        ds_billing_export_enriched.cost_metric: adjusted^_cost
      sorts: [ds_billing_export_enriched.total_cost_by_cost_metric desc]
      limit: 500
      column_limit: 10
      x_axis_gridlines: false
      y_axis_gridlines: true
      show_view_names: false
      show_y_axis_labels: true
      show_y_axis_ticks: true
      y_axis_tick_density: default
      y_axis_tick_density_custom: 5
      show_x_axis_label: true
      show_x_axis_ticks: true
      y_axis_scale_mode: linear
      x_axis_reversed: false
      y_axis_reversed: false
      plot_size_by_field: false
      trellis: ''
      stacking: normal
      limit_displayed_rows: false
      legend_position: center
      point_style: none
      show_value_labels: false
      label_density: 25
      x_axis_scale: auto
      y_axis_combined: true
      ordering: none
      show_null_labels: false
      show_totals_labels: false
      show_silhouette: false
      totals_color: "#808080"
      x_axis_zoom: true
      y_axis_zoom: true
      hidden_pivots: {}
      defaults_version: 1
    - model: cloud_billing
      explore: ds_billing_export_enriched
      type: looker_column
      fields: [ds_billing_export_enriched.total_cost_by_cost_metric, ds_billing_export_enriched.project_name]
      filters:
        ds_billing_export_enriched.cost_metric: adjusted^_cost
        ds_billing_export_enriched.project_name: ''
        ds_billing_export_enriched.service_description: ''
        ds_billing_export_enriched.sku_description: ''
      sorts: [ds_billing_export_enriched.total_cost_by_cost_metric desc 0]
      limit: 500
      column_limit: 50
      query_timezone: America/Phoenix
      x_axis_gridlines: false
      y_axis_gridlines: true
      show_view_names: false
      show_y_axis_labels: true
      show_y_axis_ticks: true
      y_axis_tick_density: default
      y_axis_tick_density_custom: 5
      show_x_axis_label: true
      show_x_axis_ticks: true
      y_axis_scale_mode: linear
      x_axis_reversed: false
      y_axis_reversed: false
      plot_size_by_field: false
      trellis: ''
      stacking: ''
      limit_displayed_rows: false
      legend_position: center
      point_style: none
      show_value_labels: false
      label_density: 25
      x_axis_scale: auto
      y_axis_combined: true
      ordering: none
      show_null_labels: false
      show_totals_labels: false
      show_silhouette: false
      totals_color: "#808080"
      defaults_version: 1
      join_fields:
      - field_name: ds_billing_export_enriched.project_name
        source_field_name: ds_billing_export_enriched.project_name
    show_sql_query_menu_options: false
    show_totals: true
    show_row_totals: true
    show_view_names: false
    show_row_numbers: true
    transpose: false
    truncate_text: true
    truncate_header: false
    size_to_fit: true
    minimum_column_width: 75
    series_column_widths:
      ds_billing_export_enriched.project_name: 217
    series_cell_visualizations:
      ds_billing_export_enriched.total_cost_by_cost_metric:
        is_active: false
    table_theme: white
    limit_displayed_rows: false
    enable_conditional_formatting: false
    header_text_alignment: left
    header_font_size: '12'
    rows_font_size: '12'
    conditional_formatting_include_totals: false
    conditional_formatting_include_nulls: false
    x_axis_gridlines: false
    y_axis_gridlines: true
    y_axes: [{label: '', orientation: left, series: [{axisId: " Project Tiger 1 -\
              \ ds_billing_export_enriched.total_cost_by_cost_metric", id: " Project\
              \ Tiger 1 - ds_billing_export_enriched.total_cost_by_cost_metric",
            name: " Project Tiger 1"}, {axisId: "[Charges not specific to a project]\
              \ - ds_billing_export_enriched.total_cost_by_cost_metric", id: "[Charges\
              \ not specific to a project] - ds_billing_export_enriched.total_cost_by_cost_metric",
            name: "[Charges not specific to a project]"}, {axisId: adesa-data-science
              - ds_billing_export_enriched.total_cost_by_cost_metric, id: adesa-data-science
              - ds_billing_export_enriched.total_cost_by_cost_metric, name: adesa-data-science},
          {axisId: API Only - ds_billing_export_enriched.total_cost_by_cost_metric,
            id: API Only - ds_billing_export_enriched.total_cost_by_cost_metric,
            name: API Only}, {axisId: carvana-ga4-bigquery - ds_billing_export_enriched.total_cost_by_cost_metric,
            id: carvana-ga4-bigquery - ds_billing_export_enriched.total_cost_by_cost_metric,
            name: carvana-ga4-bigquery}, {axisId: carvana-ngcp-dev - ds_billing_export_enriched.total_cost_by_cost_metric,
            id: carvana-ngcp-dev - ds_billing_export_enriched.total_cost_by_cost_metric,
            name: carvana-ngcp-dev}, {axisId: carvana-ngcp-ds - ds_billing_export_enriched.total_cost_by_cost_metric,
            id: carvana-ngcp-ds - ds_billing_export_enriched.total_cost_by_cost_metric,
            name: carvana-ngcp-ds}, {axisId: carvana-ngcp-prod - ds_billing_export_enriched.total_cost_by_cost_metric,
            id: carvana-ngcp-prod - ds_billing_export_enriched.total_cost_by_cost_metric,
            name: carvana-ngcp-prod}, {axisId: carvana-ngcp-test - ds_billing_export_enriched.total_cost_by_cost_metric,
            id: carvana-ngcp-test - ds_billing_export_enriched.total_cost_by_cost_metric,
            name: carvana-ngcp-test}, {axisId: Carvana-Quintiq - ds_billing_export_enriched.total_cost_by_cost_metric,
            id: Carvana-Quintiq - ds_billing_export_enriched.total_cost_by_cost_metric,
            name: Carvana-Quintiq}, {axisId: carvana-service-now - ds_billing_export_enriched.total_cost_by_cost_metric,
            id: carvana-service-now - ds_billing_export_enriched.total_cost_by_cost_metric,
            name: carvana-service-now}, {axisId: carvana-specialprojects-dev - ds_billing_export_enriched.total_cost_by_cost_metric,
            id: carvana-specialprojects-dev - ds_billing_export_enriched.total_cost_by_cost_metric,
            name: carvana-specialprojects-dev}, {axisId: carvana-specialprojects-ds
              - ds_billing_export_enriched.total_cost_by_cost_metric, id: carvana-specialprojects-ds
              - ds_billing_export_enriched.total_cost_by_cost_metric, name: carvana-specialprojects-ds},
          {axisId: carvana-specialprojects-prod - ds_billing_export_enriched.total_cost_by_cost_metric,
            id: carvana-specialprojects-prod - ds_billing_export_enriched.total_cost_by_cost_metric,
            name: carvana-specialprojects-prod}, {axisId: carvana-specialprojects-test
              - ds_billing_export_enriched.total_cost_by_cost_metric, id: carvana-specialprojects-test
              - ds_billing_export_enriched.total_cost_by_cost_metric, name: carvana-specialprojects-test},
          {axisId: Carvana-Tableau - ds_billing_export_enriched.total_cost_by_cost_metric,
            id: Carvana-Tableau - ds_billing_export_enriched.total_cost_by_cost_metric,
            name: Carvana-Tableau}, {axisId: Carvana-TMW - ds_billing_export_enriched.total_cost_by_cost_metric,
            id: Carvana-TMW - ds_billing_export_enriched.total_cost_by_cost_metric,
            name: Carvana-TMW}, {axisId: Citrix - ds_billing_export_enriched.total_cost_by_cost_metric,
            id: Citrix - ds_billing_export_enriched.total_cost_by_cost_metric,
            name: Citrix}, {axisId: crv-dss-gurobi-dev - ds_billing_export_enriched.total_cost_by_cost_metric,
            id: crv-dss-gurobi-dev - ds_billing_export_enriched.total_cost_by_cost_metric,
            name: crv-dss-gurobi-dev}, {axisId: Distance Matrix API - ds_billing_export_enriched.total_cost_by_cost_metric,
            id: Distance Matrix API - ds_billing_export_enriched.total_cost_by_cost_metric,
            name: Distance Matrix API}, {axisId: DSS Purchasing - ds_billing_export_enriched.total_cost_by_cost_metric,
            id: DSS Purchasing - ds_billing_export_enriched.total_cost_by_cost_metric,
            name: DSS Purchasing}, {axisId: IT Systems - ds_billing_export_enriched.total_cost_by_cost_metric,
            id: IT Systems - ds_billing_export_enriched.total_cost_by_cost_metric,
            name: IT Systems}, {axisId: IT-Gurobi - ds_billing_export_enriched.total_cost_by_cost_metric,
            id: IT-Gurobi - ds_billing_export_enriched.total_cost_by_cost_metric,
            name: IT-Gurobi}, {axisId: Managed Systems - ds_billing_export_enriched.total_cost_by_cost_metric,
            id: Managed Systems - ds_billing_export_enriched.total_cost_by_cost_metric,
            name: Managed Systems}, {axisId: nosidelines - ds_billing_export_enriched.total_cost_by_cost_metric,
            id: nosidelines - ds_billing_export_enriched.total_cost_by_cost_metric,
            name: nosidelines}, {axisId: Predictive Modeling - ds_billing_export_enriched.total_cost_by_cost_metric,
            id: Predictive Modeling - ds_billing_export_enriched.total_cost_by_cost_metric,
            name: Predictive Modeling}, {axisId: propel-dev1 - ds_billing_export_enriched.total_cost_by_cost_metric,
            id: propel-dev1 - ds_billing_export_enriched.total_cost_by_cost_metric,
            name: propel-dev1}, {axisId: propel-front-prod - ds_billing_export_enriched.total_cost_by_cost_metric,
            id: propel-front-prod - ds_billing_export_enriched.total_cost_by_cost_metric,
            name: propel-front-prod}, {axisId: Salesforce - ds_billing_export_enriched.total_cost_by_cost_metric,
            id: Salesforce - ds_billing_export_enriched.total_cost_by_cost_metric,
            name: Salesforce}, {axisId: TS-Infosec-Ext-Logs - ds_billing_export_enriched.total_cost_by_cost_metric,
            id: TS-Infosec-Ext-Logs - ds_billing_export_enriched.total_cost_by_cost_metric,
            name: TS-Infosec-Ext-Logs}, {axisId: TS-Infosec-Logs - ds_billing_export_enriched.total_cost_by_cost_metric,
            id: TS-Infosec-Logs - ds_billing_export_enriched.total_cost_by_cost_metric,
            name: TS-Infosec-Logs}], showLabels: false, showValues: true, unpinAxis: false,
        tickDensity: default, tickDensityCustom: 5, type: linear}]
    show_y_axis_labels: true
    show_y_axis_ticks: true
    y_axis_tick_density: default
    y_axis_tick_density_custom: 5
    show_x_axis_label: false
    show_x_axis_ticks: true
    y_axis_scale_mode: linear
    x_axis_reversed: false
    y_axis_reversed: false
    plot_size_by_field: false
    x_axis_zoom: true
    y_axis_zoom: true
    trellis: ''
    stacking: normal
    legend_position: center
    series_types: {}
    point_style: none
    show_value_labels: false
    label_density: 25
    x_axis_scale: auto
    y_axis_combined: true
    ordering: none
    show_null_labels: false
    show_totals_labels: false
    show_silhouette: false
    totals_color: "#808080"
    type: looker_grid
    hidden_fields: [q1_ds_billing_export_enriched.total_cost_by_cost_metric]
    hidden_pivots: {}
    hide_totals: false
    hide_row_totals: false
    query_fields:
      measures:
      - align: right
        can_filter: false
        category: measure
        default_filter_value:
        description: ''
        enumerations:
        field_group_label:
        fill_style:
        fiscal_month_offset: 0
        has_allowed_values: false
        hidden: false
        is_filter: false
        is_numeric: true
        label: Ds Carvana Billing Export Enriched Total Cost By Cost Metric
        label_from_parameter:
        label_short: Total Cost By Cost Metric
        map_layer:
        name: ds_billing_export_enriched.total_cost_by_cost_metric
        strict_value_format: false
        requires_refresh_on_sort: false
        sortable: true
        suggestions:
        tags: []
        type: sum
        user_attribute_filter_types:
        - number
        - advanced_filter_number
        value_format: "$#,##0"
        view: ds_billing_export_enriched
        view_label: Ds Carvana Billing Export Enriched
        dynamic: false
        week_start_day: monday
        original_view: ds_billing_export_enriched
        dimension_group:
        error:
        field_group_variant: Total Cost By Cost Metric
        measure: true
        parameter: false
        primary_key: false
        project_name: cloud_billing
        scope: ds_billing_export_enriched
        suggest_dimension: ds_billing_export_enriched.total_cost_by_cost_metric
        suggest_explore: ds_billing_export_enriched
        suggestable: false
        is_fiscal: false
        is_timeframe: false
        can_time_filter: false
        time_interval:
        lookml_link: "/projects/cloud_billing/files/views%2Fds_billing_export_enriched.view.lkml?line=235"
        permanent: true
        source_file: views/ds_billing_export_enriched.view.lkml
        source_file_path: cloud_billing/views/ds_billing_export_enriched.view.lkml
        sql: "${TABLE}.{% parameter cost_metric %}"
        sql_case:
        filters:
        times_used: 0
        aggregate: true
        sorted:
          desc: true
          sort_index: 0
          pivot_index: 0
      - align: right
        can_filter: false
        category: measure
        default_filter_value:
        description: ''
        enumerations:
        field_group_label:
        fill_style:
        fiscal_month_offset: 0
        has_allowed_values: false
        hidden: false
        is_filter: false
        is_numeric: true
        label: Ds Carvana Billing Export Enriched Total Cost By Cost Metric
        label_from_parameter:
        label_short: Total Cost By Cost Metric
        map_layer:
        name: q1_ds_billing_export_enriched.total_cost_by_cost_metric
        strict_value_format: false
        requires_refresh_on_sort: false
        sortable: true
        suggestions:
        tags: []
        type: sum
        user_attribute_filter_types:
        - number
        - advanced_filter_number
        value_format: "$#,##0"
        view: ds_billing_export_enriched
        view_label: Ds Carvana Billing Export Enriched
        dynamic: false
        week_start_day: monday
        original_view: ds_billing_export_enriched
        dimension_group:
        error:
        field_group_variant: Total Cost By Cost Metric
        measure: true
        parameter: false
        primary_key: false
        project_name: cloud_billing
        scope: ds_billing_export_enriched
        suggest_dimension: ds_billing_export_enriched.total_cost_by_cost_metric
        suggest_explore: ds_billing_export_enriched
        suggestable: false
        is_fiscal: false
        is_timeframe: false
        can_time_filter: false
        time_interval:
        lookml_link: "/projects/cloud_billing/files/views%2Fds_billing_export_enriched.view.lkml?line=235"
        permanent: true
        source_file: views/ds_billing_export_enriched.view.lkml
        source_file_path: cloud_billing/views/ds_billing_export_enriched.view.lkml
        sql: "${TABLE}.{% parameter cost_metric %}"
        sql_case:
        filters:
        times_used: 0
        aggregate: true
      dimensions:
      - align: left
        can_filter: false
        category: dimension
        default_filter_value:
        description: ''
        enumerations:
        field_group_label:
        fill_style:
        fiscal_month_offset: 0
        has_allowed_values: false
        hidden: false
        is_filter: false
        is_numeric: false
        label: Ds Carvana Billing Export Enriched Project Name
        label_from_parameter:
        label_short: Project Name
        map_layer:
        name: ds_billing_export_enriched.project_name
        strict_value_format: false
        requires_refresh_on_sort: false
        sortable: true
        suggestions:
        tags: []
        type: string
        user_attribute_filter_types:
        - string
        - advanced_filter_string
        value_format:
        view: ds_billing_export_enriched
        view_label: Ds Carvana Billing Export Enriched
        dynamic: false
        week_start_day: monday
        original_view: ds_billing_export_enriched
        dimension_group:
        error:
        field_group_variant: Project Name
        measure: false
        parameter: false
        primary_key: false
        project_name: cloud_billing
        scope: ds_billing_export_enriched
        suggest_dimension: ds_billing_export_enriched.project_name
        suggest_explore: ds_billing_export_enriched
        suggestable: true
        is_fiscal: false
        is_timeframe: false
        can_time_filter: false
        time_interval:
        lookml_link: "/projects/cloud_billing/files/views%2Fds_billing_export_enriched.view.lkml?line=60"
        permanent: true
        source_file: views/ds_billing_export_enriched.view.lkml
        source_file_path: cloud_billing/views/ds_billing_export_enriched.view.lkml
        sql: "${TABLE}.project_name "
        sql_case:
        filters:
        times_used: 0
        sorted:
          desc: false
          sort_index: 1
      table_calculations: []
      pivots:
      - align: left
        can_filter: false
        category: dimension
        default_filter_value:
        description: ''
        enumerations:
        field_group_label: Usage Start Date Pt Date
        fill_style: range
        fiscal_month_offset: 0
        has_allowed_values: false
        hidden: false
        is_filter: false
        is_numeric: false
        label: Ds Carvana Billing Export Enriched Usage Start Date Pt Month
        label_from_parameter:
        label_short: Usage Start Date Pt Month
        map_layer:
        name: ds_billing_export_enriched.usage_start_date_pt_month
        strict_value_format: false
        requires_refresh_on_sort: false
        sortable: true
        suggestions:
        tags: []
        type: date_month
        user_attribute_filter_types:
        - datetime
        - advanced_filter_datetime
        value_format:
        view: ds_billing_export_enriched
        view_label: Ds Carvana Billing Export Enriched
        dynamic: false
        week_start_day: monday
        original_view: ds_billing_export_enriched
        dimension_group: ds_billing_export_enriched.usage_start_date_pt
        error:
        field_group_variant: Month
        measure: false
        parameter: false
        primary_key: false
        project_name: cloud_billing
        scope: ds_billing_export_enriched
        suggest_dimension: ds_billing_export_enriched.usage_start_date_pt_month
        suggest_explore: ds_billing_export_enriched
        suggestable: false
        is_fiscal: false
        is_timeframe: true
        can_time_filter: false
        time_interval:
          name: month
          count: 1
        lookml_link: "/projects/cloud_billing/files/views%2Fds_billing_export_enriched.view.lkml?line=117"
        permanent: true
        source_file: views/ds_billing_export_enriched.view.lkml
        source_file_path: cloud_billing/views/ds_billing_export_enriched.view.lkml
        sql: "${TABLE}.usage_start_date_PT "
        sql_case:
        filters:
        times_used: 0
    pivots: [ds_billing_export_enriched.usage_start_date_pt_month]
    sorts: [ds_billing_export_enriched.total_cost_by_cost_metric desc 0]
    column_limit: 50
    listen:
    - SKU Description: ds_billing_export_enriched.sku_description
      Service Description: ds_billing_export_enriched.service_description
      Current Month (Only Tables): ds_billing_export_enriched.Current_Month_Override
      Marketplace: ds_billing_export_enriched.marketplace_inclusion
    - SKU Description: ds_billing_export_enriched.sku_description
      Service Description: ds_billing_export_enriched.service_description
      Current Month (Only Tables): ds_billing_export_enriched.Current_Month_Override
      Marketplace: ds_billing_export_enriched.marketplace_inclusion
    row: 43
    col: 0
    width: 24
    height: 8
  filters:
  - name: Cost Metric
    title: Cost Metric
    type: field_filter
    default_value: adjusted^_cost
    allow_multiple_values: true
    required: false
    ui_config:
      type: dropdown_menu
      display: inline
    model: cloud_billing
    explore: ds_billing_export_enriched
    listens_to_filters: []
    field: ds_billing_export_enriched.cost_metric
  - name: Usage Start Date Pt Date
    title: Usage Start Date Pt Date
    type: field_filter
    default_value: 30 day
    allow_multiple_values: true
    required: false
    ui_config:
      type: relative_timeframes
      display: inline
      options: []
    model: cloud_billing
    explore: ds_billing_export_enriched
    listens_to_filters: []
    field: ds_billing_export_enriched.usage_start_date_pt_date
  - name: Project Name
    title: Project Name
    type: field_filter
    default_value: ''
    allow_multiple_values: true
    required: false
    ui_config:
      type: tag_list
      display: popover
    model: cloud_billing
    explore: ds_billing_export_enriched
    listens_to_filters: []
    field: ds_billing_export_enriched.project_name
  - name: Service Description
    title: Service Description
    type: field_filter
    default_value: ''
    allow_multiple_values: true
    required: false
    ui_config:
      type: tag_list
      display: popover
    model: cloud_billing
    explore: ds_billing_export_enriched
    listens_to_filters: []
    field: ds_billing_export_enriched.service_description
  - name: SKU Description
    title: SKU Description
    type: field_filter
    default_value: ''
    allow_multiple_values: true
    required: false
    ui_config:
      type: tag_list
      display: popover
    model: cloud_billing
    explore: ds_billing_export_enriched
    listens_to_filters: []
    field: ds_billing_export_enriched.sku_description
  - name: Current Month (Only Tables)
    title: Current Month (Only Tables)
    type: field_filter
    default_value: '202403'
    allow_multiple_values: true
    required: false
    ui_config:
      type: advanced
      display: popover
    model: cloud_billing
    explore: ds_billing_export_enriched
    listens_to_filters: []
    field: ds_billing_export_enriched.Current_Month_Override
  - name: Day of Month Start (Only Tables)
    title: Day of Month Start (Only Tables)
    type: field_filter
    default_value: '1'
    allow_multiple_values: true
    required: false
    ui_config:
      type: dropdown_menu
      display: inline
      options:
      - '1'
      - '2'
      - '3'
      - '4'
      - '5'
      - '6'
      - '7'
      - '8'
      - '9'
      - '10'
      - '11'
      - '12'
      - '13'
      - '14'
      - '15'
      - '16'
      - '17'
      - '18'
      - '19'
      - '20'
      - '21'
      - '22'
      - '23'
      - '24'
      - '25'
      - '26'
      - '27'
      - '28'
      - '29'
      - '30'
      - '31'
    model: cloud_billing
    explore: ds_billing_export_enriched
    listens_to_filters: []
    field: ds_billing_export_enriched.day_of_month_start
  - name: Day of Month End (Only Tables)
    title: Day of Month End (Only Tables)
    type: field_filter
    default_value: '31'
    allow_multiple_values: true
    required: false
    ui_config:
      type: dropdown_menu
      display: inline
      options:
      - '1'
      - '2'
      - '3'
      - '4'
      - '5'
      - '6'
      - '7'
      - '8'
      - '9'
      - '10'
      - '11'
      - '12'
      - '13'
      - '14'
      - '15'
      - '16'
      - '17'
      - '18'
      - '19'
      - '20'
      - '21'
      - '22'
      - '23'
      - '24'
      - '25'
      - '26'
      - '27'
      - '28'
      - '29'
      - '30'
      - '31'
    model: cloud_billing
    explore: ds_billing_export_enriched
    listens_to_filters: []
    field: ds_billing_export_enriched.day_of_month_end
  - name: Marketplace
    title: Marketplace
    type: field_filter
    default_value: All Other
    allow_multiple_values: true
    required: false
    ui_config:
      type: checkboxes
      display: popover
    model: cloud_billing
    explore: ds_billing_export_enriched
    listens_to_filters: []
    field: ds_billing_export_enriched.marketplace_inclusion
