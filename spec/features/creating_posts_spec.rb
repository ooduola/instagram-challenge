require 'rails_helper.rb'

feature 'Creating posts' do
  scenario 'can create a post' do
    visit '/'
    click_link 'New Post'
    attach_file("Image", Rails.root + "spec/features/files/images/thomas.jpg")
    fill_in 'Caption', with: '#thomas' 
    click_button 'Create Post'
    expect(page).to have_content('#thomas')
    expect(page).to have_css("img[src*='thomas.jpg']")
  end
end
