require 'rails_helper'

RSpec.describe "EditingCategoryTasks", type: :system do
  before do
    driven_by(:rack_test)
  end

  User.destroy_all
  before :each do
    # Devise gem rspec helper
    @user = User.create(:email => 'test123@example.com', :password => 'f4k3p455w0rd')
    login_as(@user, :scope => :user)
    @category = Category.create(category:'This is the category name', content: 'This is the category content', user_id: @user.id)
    @category.tasks.create(name:"This is the task name", description:"This is the task description")
  end

  it 'delete last task of last category created' do

    visit "/categories/#{Category.last.id}/tasks/#{Task.last.id}"

    click_on 'Destroy'

    expect(page).to  have_content('Product was successfully destroyed')
    
  end

end

