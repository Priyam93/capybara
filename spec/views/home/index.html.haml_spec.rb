require 'rails_helper'

RSpec.describe "home/index.html.haml", type: :view do

  context 'test with rspec' do
    it 'displays my name' do
      render
      expect(rendered).to match /Priya/
    end

    it 'does not contain some other name' do
      render
      expect(rendered).not_to match /Hello/
    end
  end

  context 'test with capybara' do
    it 'displays my name' do
      render
      expect(rendered).to have_css('h1', text: 'Priya')
    end

    it 'does not  contain some other name' do
      render
      expect(rendered).not_to have_css('h1', text: 'Hello')
    end

    it 'contains the link' do
      render
      expect(rendered).to have_link('Priya', href: 'google.com')
    end
  end
end
