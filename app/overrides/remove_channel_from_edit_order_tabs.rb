Deface::Override.new(
  virtual_path: 'spree/admin/shared/_tabs',
  name: 'remove_channel_from_edit_order_tabs',
  insert_after: 'erb[silent]:contains("tabs.items.each do |tab|")',
  text:  '<% next if tab.label_translation_key == "channel" %>'
)