require 'rails_helper'

RSpec.describe Workorder, type: :model do 
    describe 'relationships' do 
        it { should have_many :customers }
        it { should have_many :admins }
    end

    describe 'validations' do 
        it { should validate_presence_of :description }
        it { should validate_presence_of :work_type }
    end
end