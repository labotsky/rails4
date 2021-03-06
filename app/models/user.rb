class User < ActiveRecord::Base		
  devise :database_authenticatable, :registerable,
         :recoverable, :rememberable, :trackable, :validatable
  validates :username, presence: true 
  validates :name, presence: true        
end
