require 'rails_helper'

feature "Contact creation" do
    scenario "allows acceess to contacts page" do
        visit '/contacts'
        expect(page).to have_content I18n.t('contacts.contact_us')
    end

    scenario "allows a guest to create contact" do
        visit '/contacts'
        within(".contact-form") do
            fill_in 'contact[email]', with: 'user@example.com'
            fill_in 'contact[message]', with: 'Text message'
        end
        click_button 'Send message'
        expect(page).to have_content 'Thanks!'
    end
end
