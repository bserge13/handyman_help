class Workorder < ApplicationRecord
    has_many :customers
    has_many :admins

    validates_presence_of :description, :work_type
end