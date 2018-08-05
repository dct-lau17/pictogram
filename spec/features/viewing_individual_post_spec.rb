feature 'Viewing individual posts' do
  scenario 'can create a post' do
    post_image
    find(:xpath, "//a/img[@alt='Cat']/..").click
    # save_and_open_page
    expect(page).to have_link("Edit")
    expect(page).to have_link("Delete")
  end
end
