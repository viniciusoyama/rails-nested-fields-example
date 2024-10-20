class Sprint < ApplicationRecord
  validates :name, presence: true

  belongs_to :project
  has_many :tasks, dependent: :destroy
  accepts_nested_attributes_for :tasks, 
    reject_if: -> (attributes) { attributes[:description].blank? }, 
    allow_destroy: true

end
