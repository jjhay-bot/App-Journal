class Category < ApplicationRecord
    has_many :tasks, dependent: :destroy # this mean if category is destroy task will destroy also
<<<<<<< HEAD
    belongs_to :user
=======
    
>>>>>>> today_priority
end
