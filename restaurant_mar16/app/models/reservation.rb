class Reservation < ActiveRecord::Base
  belongs_to :restaurant

  validates_presence_of :email, :datetime, :restaurant_name
end
