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

    scenario "allows user to create comment for article" do
        visit new_article_path
        
        title = 'New article title'
        text = 'Text article very big!'
        add_article title, text

        text_comment = 'Text new comments for this articles.'
        fill_in :comment_body, with: text_comment
        click_button 'Create Comment'

        expect(page).to have_content  text_comment
    end  
end