require 'rails_helper'

# Feature > scenario > execution
# visit root route
# click create post link
# fill in form with needed info (title, content)
# click submit button
# expect page to have content we submitted

feature 'Editing Categories' do
  scenario 'can create new categories' do

    visit '/categories'

    click_link 'Add Category'

    fill_in 'Category', with: 'Category1'
    fill_in 'Content', with: 'Sample1'

    click_on 'Save Category'

    expect(page).to have_text('Category1')
    expect(page).to have_text('Sample1')

    expect(page).to have_text('Category1 Edited')
    expect(page).to have_text('Sample1 Edited')

 
    category = Category.order(id: :desc).last
    visit "/categories/#{category.id}/edit"

    fill_in 'Category', with: 'Category1 Edited'
    fill_in 'Content', with: 'Sample1 Edited'

    click_on 'Save Category'

    expect(category.category).to have_text('Category1 Edited')
    expect(category.content).to have_text('Sample1 Edited')

  end
end
