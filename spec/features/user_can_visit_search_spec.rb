require 'rails_helper'

describe "As a user" do
  describe 'When I visit "/"' do
    describe 'And I fill in "Emily" in the textfield(Note: Use the existing search form)' do
      describe 'And I click "Get Poems"' do
        it 'Then I should be on page "/search" see 10 poems and tones for each poem' do
          visit '/'
          fill_in :author, with: 'shakespear'
          click_on('Get Poems')
          expect(current_path).to eq('/search')
          expect(page).to have_css('.Poem',count: 10)
          save_and_open_page
        end
      end
    end
  end
end
