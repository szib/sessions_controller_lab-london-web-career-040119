require 'rails_helper'

RSpec.describe 'sessions', type: :feature do
  before :each do
    visit '/'
    click_link('Login')
    fill_in 'name', with: 'Marvin'
    click_on('login')
  end

  it 'greats the logged in user' do
    expect(page.body).to have_content('Hi, Marvin')
  end

  it 'has a logout button' do
    expect(page.body).to have_button 'logout'
  end

  it 'enable user to log out' do
    click_on('logout')
    expect(page.body).to have_link 'Login', href: '/login'
  end
end
