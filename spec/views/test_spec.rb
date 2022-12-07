require 'rails_helper'

RSpec.describe 'Test Page', type: :system do
  before do
    driven_by(:rack_test)
  end

  it 'loads the test page' do
    visit test_index_path
    expect(page).to have_content('This is a page for end to end testing')
  end
end