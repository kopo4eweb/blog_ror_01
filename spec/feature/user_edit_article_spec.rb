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
end