class Admin < ApplicationRecord
    belongs_to :workorder
    has_many :customers, through: :workorder

    validates_presence_of :email, :workorder_id
end