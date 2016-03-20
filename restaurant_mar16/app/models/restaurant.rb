class Restaurant < ActiveRecord::Base
	belongs_to :owner
	has_many :reservations
	
	validates_presence_of :name, :description, :owner_id
  validates(:phone, format: { with: /\d{3}-\d{3}-\d{4}/, message: "invalid phone number" })
end
