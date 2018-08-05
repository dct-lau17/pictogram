require 'rails_helper.rb'

feature 'Creating posts' do
  scenario 'can create a post' do
    post_image
    expect(page).to have_css("img[src*='cat.png']")
    expect(page).to have_content("Up up and away!")
  end

  it 'an image must be attached to create a post' do
    visit '/'
    click_link 'New Post'
    fill_in 'Caption', with: "I forgot to add a picture to this test"
    click_button 'Post Image'
    expect(page).to have_content('Did you forget to add your picture?')
  end

end
