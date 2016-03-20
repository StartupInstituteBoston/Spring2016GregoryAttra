require 'rails_helper'

RSpec.describe RestaurantsController, type: :controller do
	let :restaurant do
		Restaurant.new(
			name: 'test',
			description: 'test',
			phone: '123-123-1234',
			address: 'test',
			owner_id: '1'
		)
	end
end