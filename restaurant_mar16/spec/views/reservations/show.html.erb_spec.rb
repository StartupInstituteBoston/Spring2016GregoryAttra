require 'rails_helper'

RSpec.describe "reservations/show", type: :view do
  before(:each) do
    @reservation = assign(:reservation, Reservation.create!(
      :email => "Email",
      :message => "Message",
      :restaurant_name => "Restaurant Name"
    ))
  end

  it "renders attributes in <p>" do
    render
    expect(rendered).to match(/Email/)
    expect(rendered).to match(/Message/)
    expect(rendered).to match(/Restaurant Name/)
  end
end
