module Spree
  module Admin
    StockLocationsController.class_eval do
      before_action :load_data, :except => [:index]
  
      def load_data
        @calculators = StockLocation.calculators.sort_by(&:name)
      end
    end
  end
end
