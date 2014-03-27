class Sale < ActiveRecord::Base
  belongs_to :commodity
  belongs_to :when
  belongs_to :location
end
