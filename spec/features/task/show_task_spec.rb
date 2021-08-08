require 'rails_helper'

RSpec.feature "ShowTasks", type: :feature do

  let(:category) { Category }
  let(:user) { User }

  before :all do
    @user = User.destroy_all
    @user = FactoryBot.create(:user)
    @category = Category.create!(category:'This is the category name',content:'This is the category content', user_id: @user.id)
    @category.tasks.create!(name:"This is the task name", description:"This is the task description")
  end

  before :each do
    login_as(@user, :scope => :user)
  end

  describe 'Shows task' do
    scenario 'displays task' do
      visit "/categories/#{@category.id}/tasks"
      expect(page).to have_content('This is the task name')
      expect(page).to have_content('This is the task description')
    end
  end
end
