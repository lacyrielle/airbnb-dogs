class Dog < ApplicationRecord
    has_many :strolls
    has_many :dogsitters trough :strolls

    belongs_to :city
end
