class Pet < ApplicationRecord
  validates :name, presence: true
  validates :species, inclusion: { in: ['dog', 'hipo', 'elephant', 'mouse']}
end
