class Admin < ApplicationRecord
    belongs_to :workorder
    has_many :customers, through: :workorder

    validates :email, :workorder_id, presence: true
    validates :email, uniqueness: true
    validates :email, format: {with: URI::MailTo::EMAIL_REGEXP}
end