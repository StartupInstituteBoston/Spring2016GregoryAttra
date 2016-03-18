class Restaurant < ActiveRecord::Base
	validates_presence_of :name, :description, :owner_id
  validates(:phone, format: { with: /\d{3}-\d{3}-\d{4}/, message: "invalid phone number" })
end
