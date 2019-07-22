Spree::AppConfiguration.class_eval do
  Rails.application.config.spree.calculators.class_eval do
    attr_accessor :stock_locations
  end

  Rails.application.config.spree.calculators.stock_locations = [
    Spree::Calculator::Shipping::FlatPercentItemTotal,
    Spree::Calculator::Shipping::FlatRate,
    Spree::Calculator::Shipping::FlexiRate,
    Spree::Calculator::Shipping::PerItem,
    Spree::Calculator::Shipping::PriceSack
  ]
end
