require 'rails_helper'

feature "Account creation" do
    scenario "allows acceess to contacts page" do
        visit new_user_registration_path

        expect(page).to have_content I18n.t('devise.sign_up')
    end

    scenario "allows guest to create account" do
        sign_up
        expect(page).to have_content I18n.t('devise.registrations.signed_up')
    end
end