feature 'Viewing individual posts' do
  scenario 'Returns edit form' do
    post_image
    find(:xpath, "//a/img[@alt='Cat']/..").click
    click_link 'Edit'
    expect(page).to have_button("Update")
  end

  scenario 'Returns edit form' do
    post_image
    click_to_edit
    fill_in 'Caption', with: "I have just edited this picture"
    click_button 'Update'
    expect(page).to have_content("Post updated")
    expect(page).to have_content("I have just edited this picture")
  end

  scenario 'User does not upload correct format image' do
    post_image
    click_to_edit
    attach_file('Image', "spec/assets/someDummyTestFile.js")
    click_button 'Update'
    expect(page).to have_content("Something wrong with your file")
  end

end
