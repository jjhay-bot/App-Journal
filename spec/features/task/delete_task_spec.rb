require 'rails_helper'

RSpec.describe "EditingCategoryTaks" do
  # system do
  let(:task) { Task }

  before :each do
    category = Category.create!(category:'Added category', content: 'Added category content')
    category.tasks.create!(name:'Sample task', description: 'Sample task description')
  end

  it 'edits task and displays index page' do
    category_last = Category.order(id: :desc).last
    task_last = category_last.tasks.order(id: :desc).last

    visit "/categories/#{category_last.id}/tasks/#{task_last.id}"

    click_on 'Destroy'

    expect(page).to  have_content('Product was successfully destroyed')
    
  end
end

