require 'rails_helper'

RSpec.describe 'sessions/new.html.erb', type: :view do
  it 'has a login form' do
    render
    expect(rendered).to have_css('form')
  end

  it 'shows a login button' do
    render
    expect(rendered).to have_button 'login'
  end

  it 'shows a :name text_field' do
    render
    expect(rendered).to have_field :name
  end
end
