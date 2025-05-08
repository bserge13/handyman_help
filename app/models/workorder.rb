class Workorder < ApplicationRecord
    validates_presence_of :description, :work_type
    has_many :customers
    has_many :admins
end