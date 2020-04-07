require 'rails_helper'

feature "Contact creation" do
    scenario "allows acceess to contacts page" do
        visit '/contacts'
        expect(page).to have_content 'Contacts'
    end
end
