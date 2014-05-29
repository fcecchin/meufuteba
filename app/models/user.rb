class User < ActiveRecord::Base
  # Include default devise modules. Others available are:
  # :confirmable, :lockable, :timeoutable and :omniauthable
  devise :database_authenticatable, :registerable,
         :recoverable, :rememberable, :trackable, :validatable
  has_many :leagues
  
  validates_presence_of :firstname, :lastname
  
  def full_name
    "#{firstname}  #{lastname}"
  end
end
