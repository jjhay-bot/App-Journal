

require 'rails_helper'

RSpec.describe "CreatingCategories", type: :system do

  before do
    driven_by(:rack_test)
  end

  User.destroy_all
  before :each do
    # Devise gem rspec helper
    user = User.create(:email => 'test123@example.com', :password => 'f4k3p455w0rd')
    login_as(user, :scope => :user)
    Category.create(category: "Category1", content: "Sample1", user_id: user.id)
  end

  it 'edit last category added' do
    visit "/categories/#{Category.last.id}/edit"
    
    fill_in 'Category', with: 'Edit Category1'
    fill_in 'Content', with: 'Edit Sample1'
    click_on 'Save Category'

    expect(Category.last.category).to have_text('Edit Category1')
    expect(Category.last.content).to have_text('Edit Sample1')

    expect(page).to have_text('Edit Category1')
    expect(page).to have_text('Edit Sample1')
  end

end