class Stroll < ApplicationRecord
    belong_to :dog
    belong_to :dogsitter
    belongs_to :city
end
