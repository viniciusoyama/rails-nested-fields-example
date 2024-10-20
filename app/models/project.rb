class Project < ApplicationRecord
  validates :name, presence: true

  has_many :sprints
  accepts_nested_attributes_for :sprints, 
    reject_if: -> (attributes) { attributes[:name].blank? }, 
    allow_destroy: true
end
