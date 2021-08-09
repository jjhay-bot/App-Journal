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

  it 'edits last task of last category created' do

    visit "/categories/#{Category.last.id}/tasks/#{Task.last.id}/edit"

    fill_in "name",	with: "Edited name" 
    fill_in 'Description', with: 'Edited Description'
    fill_in 'Schedule', with: '2021-08-09'

    # fill_in "Description",	with: "Edited description" 

    click_on 'Update Task'

    expect(page).to  have_text("Edited name" )
    expect(page).to  have_content('Edited Description')
    expect(page).to  have_content('2021-08-09')

    expect(Task.last.name).to  have_content('Edited name')
    expect(Task.last.description).to  have_content('Edited Description')
    expect(Task.last.schedule).to  have_content('2021-08-09')
    
  end

end

