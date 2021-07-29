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

    click_link 'Add Category'

    fill_in 'Category', with: 'Category1'
    fill_in 'Content', with: 'Sample1'

    click_on 'Save Category'

    expect(page).to have_text('Category1')
    expect(page).to have_text('Sample1')

  end
end
