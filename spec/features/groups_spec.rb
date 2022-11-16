require 'rails_helper'

RSpec.describe 'Groups', type: :feature do
  before(:each) do
    User.create(name: 'John', email: 'john@example.com', password: 'password', password_confirmation: 'password')
    visit(new_user_session_path)
    fill_in 'Email', with: 'john@example.com'
    fill_in 'Password', with: 'password'
    click_button 'Log in'
  end

  it 'should show the categories index page' do
    expect(page).to have_content('Categories')
  end

  it 'should not have any categories yet' do
    expect(page).to have_content("You don\'t have any categories yet.")
  end

  it 'should show the new category page' do
    click_link 'Add a new category'
    expect(page).to have_content('Create a new category:')
  end
end