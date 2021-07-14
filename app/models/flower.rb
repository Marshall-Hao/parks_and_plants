class Flower < ApplicationRecord
    belongs_to :garden
    validates :name, :image_url, presence: true
end
