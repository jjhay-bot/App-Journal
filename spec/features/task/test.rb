require 'rails_helper'

RSpec.feature "ShowTasks", type: :feature do
  let(:category) { Category }
  before :each do
    @category = Category.create!(category:'This is the category name',content:'This is the category content')
    @category.tasks.create!(name:"This is the task name", description:"This is the task description")
  end
  describe 'Shows task' do
    scenario 'displays task' do
      visit "/categories/#{@category.id}/tasks"
      expect(page).to have_content('This is the task name')
      expect(page).to have_content('This is the task description')
    end
  end
end