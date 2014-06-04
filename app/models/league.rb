class League < ActiveRecord::Base
  validates_presence_of(:name)
  
  belongs_to :user

  has_many :teams

  def custom_name
    "#{self.name}"
  end
end
