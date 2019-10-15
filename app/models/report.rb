class Report < ApplicationRecord
    belongs_to :user
    has_many :comments, dependent: :destroy
    has_one_attached :img 
    validates :reporttype, :img, :species, :petname, :gender, :breed, :color, :city, :address,
    :date, :age, :email,  presence: true

   
    
    # validates :phone, numericality: { only_integer: true,  allow_blank: true}
    # validates_length_of :phone, is: 10
    
    # validates :name, presence: { message: "must be given please" }
 
    # validates :age, numericality: { message: "%{value} seems wrong" }
    
end
