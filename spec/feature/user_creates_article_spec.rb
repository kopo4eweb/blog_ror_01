require 'rails_helper'

feature "Article creation" do
    before(:each) do
        sign_up
    end

    scenario "allows user to visit new article page" do
        visit new_article_path
        expect(page).to have_content I18n.t('articles.new_article')
    end  

    scenario "allows user to create new article" do
        title = 'New article title'
        text = 'Text article very big!'
        add_article title, text
        expect(page).to have_content title
        expect(page).to have_content text
    end  
end