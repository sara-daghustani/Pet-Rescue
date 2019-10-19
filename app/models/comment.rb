class Comment < ApplicationRecord
    belongs_to :report
    belongs_to :user
    validates :content, presence: true
    
    def self.reversed
        order(:created_at).reverse
      end 
end
