def post_image
  visit '/'
  click_link 'New Post'
  attach_file('Image', "spec/assets/images/cat.png")
  fill_in 'Caption', with: "This is a cat, meow!"
  click_button 'Post Image'
end
