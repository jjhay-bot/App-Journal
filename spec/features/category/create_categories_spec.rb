require 'rails_helper'

RSpec.describe "Edit Categories", type: :system do

  before do
    driven_by(:rack_test)
  end

  User.destroy_all
  before :each do
    # Devise gem rspec helper
    user = User.create(:email => 'test123@example.com', :password => 'f4k3p455w0rd')
    login_as(user, :scope => :user)
  end

  it 'redirects to category/index page' do
    # upon visiting category path without loging in, Redirect to sign in page
    visit categories_path
    click_on 'Add Category'
    
    fill_in 'Category', with: 'Category1'
    fill_in 'Content', with: 'Sample1'
    click_on 'Save Category'
  end
end
