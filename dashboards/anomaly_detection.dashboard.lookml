---
- dashboard: anomaly_detection
  title: Anomaly Detection
  layout: newspaper
  preferred_viewer: dashboards-next
  description: ''
  preferred_slug: P16w5i0d3wLxBXKbHe9VcI
  elements:
  - title: Spend Per Day
    name: Spend Per Day
    model: cloud_billing
    explore: alerting_gcp_anomaly_dashboard
    type: looker_column
    fields: [alerting_gcp_anomaly_dashboard.total_anomaly_amount, alerting_gcp_anomaly_dashboard.total_normal_spend,
      alerting_gcp_anomaly_dashboard.usage_start_date]
    fill_fields: [alerting_gcp_anomaly_dashboard.usage_start_date]
    filters: {}
    sorts: [alerting_gcp_anomaly_dashboard.usage_start_date]
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
    listen:
      Stddev Sensitivity (Enter a value between 0 and 3): alerting_gcp_anomaly_dashboard.stddev_sensitivity
      Usage Start Date: alerting_gcp_anomaly_dashboard.usage_start_date
      Project Name: alerting_gcp_anomaly_dashboard.project_name
      Service Description: alerting_gcp_anomaly_dashboard.service_description
      SKU Description: alerting_gcp_anomaly_dashboard.sku_description
      Anomaly Daily Threshold (between 0 and 10000): alerting_gcp_anomaly_dashboard.anomaly_daily_threshold
    row: 0
    col: 3
    width: 18
    height: 9
  - title: Anomalies by OpEx Network
    name: Anomalies by OpEx Network
    model: cloud_billing
    explore: alerting_gcp_anomaly_dashboard
    type: looker_grid
    fields: [alerting_gcp_anomaly_dashboard.total_anomaly_amount, alerting_gcp_anomaly_dashboard.total_adjusted_cost,
      alerting_gcp_anomaly_dashboard.vendor, alerting_gcp_anomaly_dashboard.op_ex_network_name,
      alerting_gcp_anomaly_dashboard.service_description, alerting_gcp_anomaly_dashboard.sku_description]
    filters:
      alerting_gcp_anomaly_dashboard.total_anomaly_amount: not 0
    sorts: [alerting_gcp_anomaly_dashboard.total_anomaly_amount desc]
    limit: 500
    column_limit: 50
    total: true
    query_timezone: America/Phoenix
    show_view_names: false
    show_row_numbers: false
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
      alerting_gcp_anomaly_dashboard.total_anomaly_amount:
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
    ordering: none
    show_null_labels: false
    show_totals_labels: false
    show_silhouette: false
    totals_color: "#808080"
    hidden_pivots: {}
    defaults_version: 1
    listen:
      Stddev Sensitivity (Enter a value between 0 and 3): alerting_gcp_anomaly_dashboard.stddev_sensitivity
      Usage Start Date: alerting_gcp_anomaly_dashboard.usage_start_date
      Project Name: alerting_gcp_anomaly_dashboard.project_name
      Service Description: alerting_gcp_anomaly_dashboard.service_description
      SKU Description: alerting_gcp_anomaly_dashboard.sku_description
      Anomaly Daily Threshold (between 0 and 10000): alerting_gcp_anomaly_dashboard.anomaly_daily_threshold
    row: 9
    col: 3
    width: 18
    height: 7
  - title: Anomalies by Project
    name: Anomalies by Project
    model: cloud_billing
    explore: alerting_gcp_anomaly_dashboard
    type: looker_grid
    fields: [alerting_gcp_anomaly_dashboard.vendor, alerting_gcp_anomaly_dashboard.project_name,
      alerting_gcp_anomaly_dashboard.service_description, alerting_gcp_anomaly_dashboard.sku_description,
      alerting_gcp_anomaly_dashboard.total_anomaly_amount, alerting_gcp_anomaly_dashboard.total_adjusted_cost]
    filters:
      alerting_gcp_anomaly_dashboard.total_anomaly_amount: not 0
    sorts: [alerting_gcp_anomaly_dashboard.total_adjusted_cost desc]
    limit: 500
    column_limit: 50
    total: true
    query_timezone: America/Phoenix
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
    header_font_size: 12
    rows_font_size: 12
    conditional_formatting_include_totals: false
    conditional_formatting_include_nulls: false
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
    ordering: none
    show_null_labels: false
    show_totals_labels: false
    show_silhouette: false
    totals_color: "#808080"
    hidden_pivots: {}
    defaults_version: 1
    listen:
      Stddev Sensitivity (Enter a value between 0 and 3): alerting_gcp_anomaly_dashboard.stddev_sensitivity
      Usage Start Date: alerting_gcp_anomaly_dashboard.usage_start_date
      Project Name: alerting_gcp_anomaly_dashboard.project_name
      Service Description: alerting_gcp_anomaly_dashboard.service_description
      SKU Description: alerting_gcp_anomaly_dashboard.sku_description
      Anomaly Daily Threshold (between 0 and 10000): alerting_gcp_anomaly_dashboard.anomaly_daily_threshold
    row: 16
    col: 3
    width: 18
    height: 7
  - title: Cost Data by Date
    name: Cost Data by Date
    model: cloud_billing
    explore: alerting_gcp_anomaly_dashboard
    type: looker_grid
    fields: [alerting_gcp_anomaly_dashboard.vendor, alerting_gcp_anomaly_dashboard.service_description,
      alerting_gcp_anomaly_dashboard.op_ex_network_name, alerting_gcp_anomaly_dashboard.sku_description,
      alerting_gcp_anomaly_dashboard.usage_start_date, alerting_gcp_anomaly_dashboard.total_adjusted_cost]
    filters:
      alerting_gcp_anomaly_dashboard.total_adjusted_cost: not 0
    sorts: [alerting_gcp_anomaly_dashboard.total_adjusted_cost desc]
    subtotals: [alerting_gcp_anomaly_dashboard.vendor, alerting_gcp_anomaly_dashboard.service_description,
      alerting_gcp_anomaly_dashboard.op_ex_network_name, alerting_gcp_anomaly_dashboard.sku_description]
    limit: 500
    column_limit: 50
    total: true
    query_timezone: America/Phoenix
    show_view_names: false
    show_row_numbers: false
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
      alerting_gcp_anomaly_dashboard.total_anomaly_amount:
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
    ordering: none
    show_null_labels: false
    show_totals_labels: false
    show_silhouette: false
    totals_color: "#808080"
    hidden_pivots: {}
    defaults_version: 1
    hidden_fields: []
    hidden_points_if_no: []
    listen:
      Stddev Sensitivity (Enter a value between 0 and 3): alerting_gcp_anomaly_dashboard.stddev_sensitivity
      Usage Start Date: alerting_gcp_anomaly_dashboard.usage_start_date
      Project Name: alerting_gcp_anomaly_dashboard.project_name
      Service Description: alerting_gcp_anomaly_dashboard.service_description
      SKU Description: alerting_gcp_anomaly_dashboard.sku_description
      Anomaly Daily Threshold (between 0 and 10000): alerting_gcp_anomaly_dashboard.anomaly_daily_threshold
    row: 23
    col: 3
    width: 18
    height: 7
  filters:
  - name: Usage Start Date
    title: Usage Start Date
    type: field_filter
    default_value: 14 day
    allow_multiple_values: true
    required: false
    ui_config:
      type: relative_timeframes
      display: inline
      options: []
    model: cloud_billing
    explore: alerting_gcp_anomaly_dashboard
    listens_to_filters: []
    field: alerting_gcp_anomaly_dashboard.usage_start_date
  - name: Stddev Sensitivity (Enter a value between 0 and 3)
    title: Stddev Sensitivity (Enter a value between 0 and 3)
    type: field_filter
    default_value: '1.0'
    allow_multiple_values: true
    required: false
    ui_config:
      type: advanced
      display: popover
      options: []
    model: cloud_billing
    explore: alerting_gcp_anomaly_dashboard
    listens_to_filters: []
    field: alerting_gcp_anomaly_dashboard.stddev_sensitivity
  - name: Anomaly Daily Threshold (between 0 and 10000)
    title: Anomaly Daily Threshold (between 0 and 10000)
    type: field_filter
    default_value: '100'
    allow_multiple_values: true
    required: false
    ui_config:
      type: advanced
      display: popover
      options: []
    model: cloud_billing
    explore: alerting_gcp_anomaly_dashboard
    listens_to_filters: []
    field: alerting_gcp_anomaly_dashboard.anomaly_daily_threshold
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
    explore: alerting_gcp_anomaly_dashboard
    listens_to_filters: []
    field: alerting_gcp_anomaly_dashboard.project_name
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
    explore: alerting_gcp_anomaly_dashboard
    listens_to_filters: []
    field: alerting_gcp_anomaly_dashboard.service_description
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
    explore: alerting_gcp_anomaly_dashboard
    listens_to_filters: []
    field: alerting_gcp_anomaly_dashboard.sku_description
