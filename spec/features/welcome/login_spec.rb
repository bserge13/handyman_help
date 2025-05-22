require 'rails_helper'

RSpec.describe 'Landing Page', type: :feature do
    describe 'welcome' do 
        it 'has a login field' do 
            visit root_path

            expect(page).to have_field
        end
    end
end 