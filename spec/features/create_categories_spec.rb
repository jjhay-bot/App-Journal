require 'rails_helper'

# Feature > scenario > execution
# visit root route
# click create post link
# fill in form with needed info (title, content)
# click submit button
# expect page to have content we submitted

feature 'Creating Categories' do
  scenario 'can create new categories' do

    visit '/categories'

    click_link 'Create Category'

    fill_in 'category_name', with: 'Sample'

    click_link 'Add Category'

    expect(page).to have_text('Sample')

  end
end
