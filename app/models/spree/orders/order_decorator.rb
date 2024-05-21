Spree::Order.class_eval do
  before_create :set_number
  def set_number
    self.number.gsub!("R", "RORJUN")
  end
end
