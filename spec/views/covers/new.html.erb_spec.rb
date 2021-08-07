require 'rails_helper'

RSpec.describe "covers/new", type: :view do
  before(:each) do
    assign(:cover, Cover.new(
      image_link: "MyString"
    ))
  end

  it "renders new cover form" do
    render

    assert_select "form[action=?][method=?]", covers_path, "post" do

      assert_select "input[name=?]", "cover[image_link]"
    end
  end
end
