class Report < ApplicationRecord
    belongs_to :user
    has_many :comments, dependent: :destroy
   
    validates :img, :species, :color, :date, :address, :city, :email,  presence: true
end
