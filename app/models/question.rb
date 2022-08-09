class Question < ApplicationRecord
    belongs_to :test
    has_many :choices

    def totalScore
        
    end

end
