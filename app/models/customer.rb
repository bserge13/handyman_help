class Customer < ApplicationRecord
    belongs_to :workorder
    # has_many :admins, through: :workorder

    validates_presence_of :name, :phone_number, 
                        :address, :email, :workorder_id
end