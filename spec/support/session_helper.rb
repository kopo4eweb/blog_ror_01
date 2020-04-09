def sign_up
    visit new_user_registration_path
    fill_in :user_email, with: 'user@example.com'
    fill_in :user_username, with: 'user'
    fill_in :user_password, with: 'password'
    fill_in :user_password_confirmation, with: 'password'

    click_button 'Sign up'
end


def add_article title, text
    visit new_article_path
    fill_in :article_title, with: title
    fill_in :article_text, with: text
    click_button 'Save Article'
end