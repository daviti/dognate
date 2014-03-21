class Supply < ActiveRecord::Base
  has_attached_file :photo, :styles => { :medium => "300x300>", :thumb => "100x100>" }#, :default_url => "/images/:style/missing.png"
  validates_attachment_content_type :photo, :content_type => /\Aimage\/.*\Z/


  belongs_to :category
  belongs_to :user

  validates :name, :quantity, :condition, :presence => true

  validates :quantity, numericality: true, inclusion: { in: 1..100 }


end
