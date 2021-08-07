require 'rails_helper'

RSpec.describe "covers/index", type: :view do
  before(:each) do
    assign(:covers, [
      Cover.create!(
        image_link: "Image Link"
      ),
      Cover.create!(
        image_link: "Image Link"
      )
    ])
  end

  it "renders a list of covers" do
    render
    assert_select "tr>td", text: "Image Link".to_s, count: 2
  end
end
