class Supply < ActiveRecord::Base
  belongs_to :category
  belongs_to :user

  validates :name, :quantity, :condition, :presence => true

  validates :quantity, numericality: true, inclusion: { in: 1..100 }


end
