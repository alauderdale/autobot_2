class Car < ActiveRecord::Base
  # attr_accessible :title, :body
  belongs_to :user
  validates_numericality_of :year, :only_integer => true
  has_attached_file :car_photo, :styles => { :medium => "300x300>", :thumb => "100x100>" }, :default_url => "/images/:style/car_missing.png"
end
