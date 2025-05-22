require 'rails_helper'

RSpec.describe 'Landing Page', type: :feature do
    describe 'welcome' do 
        it 'has a landing page' do 
            visit root_path

            expect(page).to have_content('Welcome to Handyman Helper!')
        end

        it 'has a login field' do 
        end
    end
end 