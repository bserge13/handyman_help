class Customer < ApplicationRecord
    validates_presence_of :name, :phone_number, 
                        :address, :email
    belongs_to :workorder
end