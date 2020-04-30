class City < ApplicationRecord
    has_many :strolls
    has_many :dogs through :strolls
    has_many :dogstitters through :strolls
    
end
