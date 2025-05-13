require 'rails_helper'

RSpec.describe Customer, type: :model do 
    describe 'relationships' do 
        it { should belong_to :workorder }
        it { should have_many(:admins).through(:workorder) }
    end

    describe 'validations' do 
        subject { described_class.create!(name: 'Ernie', email: 'admin@example.com', address: '123 Mulberry Lane', phone_number: '867-5309', workorder: Workorder.create!(description: "Test", work_type: "Repair")) }

        it { should validate_presence_of :name }
        it { should validate_presence_of :phone_number }
        it { should validate_presence_of :address }
        it { should validate_presence_of :email }
        it { should validate_uniqueness_of(:email) }
        it { should allow_value('user@example.com').for(:email) }
        it { should_not allow_value('invalid_email').for(:email) }    
        it { should validate_presence_of :workorder_id }
    end
end