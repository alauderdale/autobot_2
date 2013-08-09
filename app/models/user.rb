class User < ActiveRecord::Base
  rolify
  # Include default devise modules. Others available are:
  # :token_authenticatable, :confirmable,
  # :lockable, :timeoutable and :omniauthable
  devise :database_authenticatable, :registerable,
         :recoverable, :rememberable, :trackable, :validatable

  # Setup accessible (or protected) attributes for your model
  attr_accessible :role_ids, :as => :admin
  attr_accessible :name, :email, :password, :password_confirmation, :remember_me, :phone_number, :avatar
  has_attached_file :avatar, :styles => { :medium => "70x70#", :thumb => "16x16#" }, :default_url => "/images/:style/avatar_missing.png"
  has_many :cars, :dependent => :destroy
  
end
