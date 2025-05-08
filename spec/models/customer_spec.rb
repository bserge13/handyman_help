require 'rails_helper'

RSpec.describe Customer, type: :model do 
    describe 'relationships' do 
        it { should belong_to :workorder }
    end

    describe 'validations' do 
        it { should validate_presence_of :name }
        it { should validate_presence_of :phone_number }
        it { should validate_presence_of :address }
        it { should validate_presence_of :email }
    end
end