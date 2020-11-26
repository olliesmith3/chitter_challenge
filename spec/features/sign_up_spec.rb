feature 'sign up' do
  scenario 'user visits sign up page and enters details - redirected to sign up page' do
    visit '/'
    click_button "Sign Up"
    fill_in :email, with: "ollie@ollie.com"
    fill_in :first_name, with: "Ollie"
    fill_in :last_name, with: "Smith"
    click_button "Sign Up"
    expect(page).to have_content 'chitter'
  end
end