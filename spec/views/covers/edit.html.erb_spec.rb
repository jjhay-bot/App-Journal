require 'rails_helper'

RSpec.describe "covers/edit", type: :view do
  before(:each) do
    @cover = assign(:cover, Cover.create!(
      image_link: "MyString"
    ))
  end

  it "renders the edit cover form" do
    render

    assert_select "form[action=?][method=?]", cover_path(@cover), "post" do

      assert_select "input[name=?]", "cover[image_link]"
    end
  end
end
