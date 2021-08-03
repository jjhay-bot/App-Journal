require 'rails_helper'

RSpec.describe "EditingCategoryTaks" do
  # system do
  let(:task) { Task }

  before :each do
    category = Category.create!(category:'Sample category name', content: 'Sample category content')
    category.tasks.create!(name:'Sample task', description: 'Sample task description')
  end

  it 'edits task and displays index page' do
    category_last = Category.order(id: :desc).last
    task_last = category_last.tasks.order(id: :desc).last

    visit "/categories/#{category_last.id}/tasks/#{task_last.id}/edit"

    fill_in "name",	with: "sometext" 
    fill_in "name",	with: "Edited name" 
    fill_in "description",	with: "Edited description" 
    # fill_in "category_name",	with: "Edited category_name" 
    # fill_in "category_description",	with: "Edited category_description" 

    click_link 'Update changes'

    expect(page).to  have_content('Edited name')
    expect(page).to  have_content('Edited description')
    # expect(page).to  have_content('Edited category_name')
    # expect(page).to  have_content('Edited category_description')

  end
end