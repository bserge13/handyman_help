class Workorder < ApplicationRecord
    has_many :customers
    has_many :admins

    validates :description, :work_type, presence: true
end