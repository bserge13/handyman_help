require 'rails_helper'

RSpec.describe Customer, type: :model do 
    describe 'relationships' do 
        it { should belong_to :workorder }
        it { should have_many(:admins).through(:workorder) }
    end

    describe 'validations' do 
        it { should validate_presence_of :name }
        it { should validate_presence_of :phone_number }
        it { should validate_presence_of :address }
        it { should validate_presence_of :email }
        it { should validate_presence_of :workorder_id }
    end
end