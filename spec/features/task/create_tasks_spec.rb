require 'rails_helper'

RSpec.feature "CreateTasks", type: :feature do
  let(:category) { Category }
  let(:task) { Task }
  let(:user) { User}
  before :each do
    user.destroy_all
    # @user  = User.create!(email: 'user1@mail.com',password: '123qwe', password_confirmation: '123qwe')
    @user = FactoryBot.create(:user)
    byebug
    # @user = User.create!(email: 'test1234@example.com', password: 'f4k3p455w0rd')
    login_as(user, :scope => :user)
    @category = Category.create!(category:'This is the category name', content: 'This is the category content', user_id: @user.id)
  end
    describe 'Creates new task' do
      # scenario 'logins user' do
      #   visit '/users/sign_in'
      #   fill_in 'user_email', with: @user.email
      #   fill_in 'user_email', with: @user.password
      #   click_on 'Log in'
      # end

      scenario 'redirects to show category page' do
        visit categories_path
        expect(page).to have_current_path categories_path
        expect(page).to have_content('This is the category name')
        expect(page).to have_content('Show')
        click_link 'Show'
      end
      # scenario 'displays category details' do
      #   visit "/categories/#{@category.id}"
      #   expect(page).to have_current_path category_path(@category.id)
      #   expect(page).to have_content('This is the category name')
      #   expect(page).to have_content('This is the category content')
      # end
      # scenario 'goes to add new task page' do
      #   visit "/categories/#{@category.id}"
      #   expect(page).to have_content('Tasks')
      #   click_on 'Add new task'
      # end
      # scenario 'successfully creates a new task and displays resulting task' do
      #   visit "/categories/#{@category.id}/tasks/new"
      #   expect(page).to have_current_path new_category_task_path(@category.id)
      #   within 'form' do
      #     fill_in 'name', with: 'This is the task name'
      #     fill_in 'description', with: 'This is the task description'
      #     click_on 'Add Task'
      #   end
      #   expect(page).to have_current_path category_path(@category.id)
      #   expect(page).to have_content('Tasks')
      #   expect(page).to have_content('This is the task name')
      #   expect(page).to have_content('This is the task description')
      # end
      # scenario 'confirms task was saved to database' do
      #   @category.tasks.create!(name:"This is the task name", description:"This is the task description")
      #   task = Task.order("id").last
      #   expect(task.name).to eq('This is the task name')
      #   expect(task.description).to eq('This is the task description')
      # end
    end
end