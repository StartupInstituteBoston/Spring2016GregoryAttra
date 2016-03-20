require 'rails_helper'

RSpec.describe "reservations/index", type: :view do
  before(:each) do
    assign(:reservations, [
      Reservation.create!(
        :email => "Email",
        :message => "Message",
        :restaurant_name => "Restaurant Name"
      ),
      Reservation.create!(
        :email => "Email",
        :message => "Message",
        :restaurant_name => "Restaurant Name"
      )
    ])
  end

  it "renders a list of reservations" do
    render
    assert_select "tr>td", :text => "Email".to_s, :count => 2
    assert_select "tr>td", :text => "Message".to_s, :count => 2
    assert_select "tr>td", :text => "Restaurant Name".to_s, :count => 2
  end
end
