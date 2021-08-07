class Category < ApplicationRecord
    has_many :tasks, dependent: :destroy # this mean if category is destroy task will destroy also
    belongs_to :user
end
