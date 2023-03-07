class Pet < ApplicationRecord
  validates :name, presence: true
  validates :species, inclusion: { in: ['dog', 'hipo', 'elephant', 'mouse']}

  def found_days_ago
    (Date.today - found_on).to_i
  end
end
