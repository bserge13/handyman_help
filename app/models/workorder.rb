class Workorder < ApplicationRecord
    validates_presence_of :description, :work_type
end