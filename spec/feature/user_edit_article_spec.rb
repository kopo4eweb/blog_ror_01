require 'rails_helper'

feature "Article edit" do
    before(:each) do
        sign_up
    end

    scenario "allows user visit to edit article" do
        title = 'New article title'
        text = 'Text article very big!'
        add_article title, text

        visit articles_path
        click_link(I18n.t('articles.link.edit'))
        
        expect(page).to have_content I18n.t('articles.edit_article')
    end  

    scenario "allows user to edit article" do
        title = 'New article title'
        text = 'Text article very big!'
        add_article title, text

        visit articles_path
        click_link(I18n.t('articles.link.edit'))

        new_title = 'New article title v2'
        new_text = 'Text article very big! Edit version.'
        fill_in :article_title, with: new_title
        fill_in :article_text, with: new_text
        click_button 'Save Article'
        
        expect(page).to have_content new_title
        expect(page).to have_content new_text
    end  
end