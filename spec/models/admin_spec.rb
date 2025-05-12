require 'rails_helper'

RSpec.describe Admin, type: :model do 
    describe 'relationships' do 
        it { should belong_to :workorder }
        # it { should have_many(:customers).through(:workorder) }
    end

    describe 'validations' do 
        it { should validate_presence_of :email }
        it { should validate_uniqueness_of(:email) }
        it { should allow_value('user@example.com').for(:email) }
        it { should_not allow_value('invalid_email').for(:email) }    
        it { should validate_presence_of :workorder_id }
    end
end