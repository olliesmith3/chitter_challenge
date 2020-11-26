feature 'visit index' do
  scenario 'user visits index page and can see the word chitter' do
    visit '/'
    expect(page).to have_content 'chitter'
  end
end