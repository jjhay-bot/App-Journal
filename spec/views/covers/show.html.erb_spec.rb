require 'rails_helper'

RSpec.describe "covers/show", type: :view do
  before(:each) do
    @cover = assign(:cover, Cover.create!(
      image_link: "Image Link"
    ))
  end

  it "renders attributes in <p>" do
    render
    expect(rendered).to match(/Image Link/)
  end
end
