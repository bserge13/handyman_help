require 'rails_helper'

RSpec.describe 'Landing Page', type: :feature do
    describe 'welcome' do 
        it 'has a landing page' do 
            visit root_path

            expect(page).to have_content('Welcome to Handyman Helper!')
        end

        it 'has options to create a profile or log in' do 
            visit root_path

            expect(page).to have_field :email
            expect(page).to have_field :password 
            expect(page).to have_button('login')

            expect(page).to have_button('Login')
            expect(page).to have_button('Create Profile')
        end
    end
end 