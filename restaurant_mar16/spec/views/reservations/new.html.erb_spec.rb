require 'rails_helper'

RSpec.describe "reservations/new", type: :view do
  before(:each) do
    assign(:reservation, Reservation.new(
      :email => "MyString",
      :message => "MyString",
      :restaurant_name => "MyString"
    ))
  end

  it "renders new reservation form" do
    render

    assert_select "form[action=?][method=?]", reservations_path, "post" do

      assert_select "input#reservation_email[name=?]", "reservation[email]"

      assert_select "input#reservation_message[name=?]", "reservation[message]"

      assert_select "input#reservation_restaurant_name[name=?]", "reservation[restaurant_name]"
    end
  end
end
