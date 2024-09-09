# frozen_string_literal: true

require 'rails_helper'

RSpec.describe 'CreatingBooks', type: :system do
  before do
    driven_by(:rack_test)
  end

  it 'saves and displays the inputted book title' do
    visit '/books/new'

    fill_in 'Title', with: 'The Diary of a Wimpy Kid'
    # fill_in 'Author', with: 'Jeff Kinney'
    # fill_in 'Price', with: '7.79'
    # fill_in 'Published date', with '01/01/2007'

    click_on 'Create Book'

    expect(page).to have_content('The Diary of a Wimpy Kid')

    book = Book.order('id').last
    expect(book.title).to eq('The Diary of a Wimpy Kid')
    # expect(book.author).to eq('Jeff Kinney')
    # expect(book.price).to eq('7.79')
    # expect(book.published_date).to eq('01/01/2007')
  end

  it 'saves and displays the incomplete book title' do
    visit '/books/new'

    click_on 'Create Book'

    expect(page).to have_content('Book was successfully created.')
  end

  it 'saves and displays the inputted book title' do
    visit '/books/new'

    fill_in 'Title', with: 'The Diary of a Wimpy Kid'
    fill_in 'Author', with: 'Jeff Kinney'
    fill_in 'Price', with: '7.79'
    fill_in 'Published date', with: '01-01-2007'

    click_on 'Create Book'

    expect(page).to have_content('The Diary of a Wimpy Kid')

    book = Book.order('id').last
    expect(book.title).to eq('The Diary of a Wimpy Kid')
    expect(book.author).to eq('Jeff Kinney')
    expect(book.price).to eq(7.79)
    expect(book.published_date).to eq(Date.new(2007, 1, 1))
  end

  it 'checks for seeded information in test database' do
    visit '/books'

    expect(page).to have_content('Testing')
    expect(page).to have_content('Mr. Testing')
    expect(page).to have_content('99999.99')
    expect(page).to have_content('1453-01-01')
  end
  
end
