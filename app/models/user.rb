class User < ApplicationRecord
    has_many :tests
    
    validates :user_name, presence:true , length: {minimum: 3, maximum: 30}
end
