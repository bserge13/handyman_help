class Admin < ApplicationRecord
    validates_presence_of :email, :workorder_id
    belongs_to :workorder
end