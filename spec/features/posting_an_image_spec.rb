require 'rails_helper.rb'

feature 'Creating posts' do
  scenario 'can create a post' do
    visit '/'
    click_link 'New Post'
    attach_file('Image', "spec/assets/images/cat.png")
    fill_in 'Caption', with: "This is a cat, meow!"
    click_button 'Post Image'
    expect(page).to have_css("img[src*='cat.png']")
  end
end
