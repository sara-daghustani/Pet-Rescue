class Report < ApplicationRecord
    belongs_to :user
    has_many :comments, dependent: :destroy
    has_one_attached :img 
 
    validates_length_of :phone, is: 10

end
