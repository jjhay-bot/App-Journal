require 'rails_helper'

describe "create category without value" do

    context "validation" do
        it 'ensure the presence of add category to database table' do
            visit '/categories'

            click_link 'Add Category'
        
            fill_in 'Category', with: ''
            fill_in 'Content', with: 'Sample1'
        
            click_on 'Save Category'
        
            expect(page).to have_current_path new_category_path
            # expect(page).to have_current_path new_category_url
            end
    end
end



