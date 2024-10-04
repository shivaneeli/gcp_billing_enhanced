---
- dashboard: usage_amount_by_project
  title: Usage Amount by Project
  layout: newspaper
  preferred_viewer: dashboards-next
  description: ''
  preferred_slug: j0BVOODtAjsCkT5j9D5olb
  elements:
  - title: Total Usage Amount in Pricing Unit
    name: Total Usage Amount in Pricing Unit
    model: cloud_billing
    explore: ds_carvana_billing_export_enriched
    type: looker_grid
    fields: [ds_carvana_billing_export_enriched.sku_description, ds_carvana_billing_export_enriched.invoice_month,
      ds_carvana_billing_export_enriched.total_adjusted_cost]
    pivots: [ds_carvana_billing_export_enriched.invoice_month]
    filters:
      ds_carvana_billing_export_enriched.usage_start_date_pt_month: 3 months
    sorts: [ds_carvana_billing_export_enriched.invoice_month, ds_carvana_billing_export_enriched.total_adjusted_cost
        desc 0]
    limit: 500
    column_limit: 50
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
    minimum_column_width: 75
    column_order: []
    listen:
      Project Name: ds_carvana_billing_export_enriched.project_name
      SKU Description: ds_carvana_billing_export_enriched.sku_description
    row: 0
    col: 2
    width: 20
    height: 14
  filters:
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
    explore: ds_carvana_billing_export_enriched
    listens_to_filters: []
    field: ds_carvana_billing_export_enriched.project_name
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
    explore: ds_carvana_billing_export_enriched
    listens_to_filters: []
    field: ds_carvana_billing_export_enriched.sku_description
