require 'rails_helper'

RSpec.describe "reservations/edit", type: :view do
  before(:each) do
    @reservation = assign(:reservation, Reservation.create!(
      :email => "MyString",
      :message => "MyString",
      :restaurant_name => "MyString"
    ))
  end

  it "renders the edit reservation form" do
    render

    assert_select "form[action=?][method=?]", reservation_path(@reservation), "post" do

      assert_select "input#reservation_email[name=?]", "reservation[email]"

      assert_select "input#reservation_message[name=?]", "reservation[message]"

      assert_select "input#reservation_restaurant_name[name=?]", "reservation[restaurant_name]"
    end
  end
end
