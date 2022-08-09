class Test < ApplicationRecord
    belongs_to :user
    has_many :questions
    has_one :personalityType     
end
