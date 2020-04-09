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
        visit new_article_path

        title = 'New article title'

        fill_in :article_title, with: title
        fill_in :article_text, with: 'Text article very big!'

        click_button 'Save Article'

        expect(page).to have_content title
    end  
end