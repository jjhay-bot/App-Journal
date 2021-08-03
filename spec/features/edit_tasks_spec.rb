require 'rails_helper'

RSpec.describe "EditingCategoryTaks" do
#   before do
#     driven_by(:rack_test)
#   end
  it 'edits task and displays index page' do
    category = Category.order(id: :desc).last
    task = category.tasks.order(id: :desc).last
    
    visit "/categories/#{category.id}/task/#{task}"

    fill_in "name",	with: "Edited name" 
    fill_in "description",	with: "Edited description" 
    fill_in "category_name",	with: "Edited category_name" 
    fill_in "category_description",	with: "Edited category_description" 

    click_link 'Update changes'

    expect(page).to  have_content('Edited name')
    expect(page).to  have_content('Edited description')
    expect(page).to  have_content('Edited category_name')
    expect(page).to  have_content('Edited category_description')

  end
end