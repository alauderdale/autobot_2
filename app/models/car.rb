class Car < ActiveRecord::Base
  # attr_accessible :title, :body
  belongs_to :user
  validates_numericality_of :year,:number_of_doors, :only_integer => true, :null => false
  has_attached_file :car_photo, :styles => { :medium => "400x300#", :thumb => "220x160#" }, :default_url => "/images/:style/car_missing.png"
end
