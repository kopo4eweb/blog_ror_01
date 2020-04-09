require 'rails_helper'

feature "Comment creation" do
    before(:each) do
        sign_up
    end

    scenario "allows user to view form add comments" do
        visit new_article_path
        
        title = 'New article title'
        text = 'Text article very big!'
        add_article title, text

        expect(page).to have_content title
        expect(page).to have_css('form.new_comment') 
    end     
end