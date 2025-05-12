class Customer < ApplicationRecord
    belongs_to :workorder
    has_many :admins, through: :workorder

    validates :name, :phone_number, :address, 
    :email, :workorder_id, presence: true
    validates :email, uniqueness: true
    validates :email, format: {with: URI::MailTo::EMAIL_REGEXP}
end