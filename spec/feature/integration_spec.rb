# location: spec/feature/integration_spec.rb
require 'rails_helper'

RSpec.describe 'Creating a book', type: :feature do
  scenario 'valid title' do
    visit new_book_path
    fill_in 'Title', with: 'harry potter'
    fill_in 'Price', with: '20.00'
    fill_in 'Author', with: 'JK Rowling'
    fill_in 'Date', with: '02/02/02'
    click_on 'Create Book'
    visit books_path
    expect(page).to have_content('harry potter')
  end

  scenario 'valid price' do
    expect(page).to have_content('20.00')
  end

  scenario 'valid author' do
    expect(page).to have_content('JK Rowling')
  end

  scenario 'valid date' do
    expect(page).to have_content('02/02/02')
  end
end