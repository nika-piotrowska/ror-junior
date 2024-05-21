Deface::Override.new(
  virtual_path: 'spree/admin/orders/index',
  name: 'add_paid_to_orders_admin_index',
  insert_after: "erb[loud]:contains(\"Spree.t('admin.orders.all')\")",
  text:  <<-ERB
    <li class="nav-item">
      <%= link_to 'Paid', 
        spree.admin_orders_path(q: { payment_state_eq: :paid }), 
        class: "nav-link \#{'active' if params.dig(:q, :payment_state_eq) == 'paid'}\" %>
    </li>
  ERB
)
