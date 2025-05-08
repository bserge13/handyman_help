class Admin < ApplicationRecord
    belongs_to :workorder

    validates_presence_of :email, :workorder_id
end