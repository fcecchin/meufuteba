# coding: utf-8
class Team < ActiveRecord::Base
#  validates_numericality_of :division_id, :only_integer => true
  validates_presence_of :name
  validates_numericality_of :founded, :only_integer => true
  validates_numericality_of :wins, :only_integer => true
  validates_numericality_of :losses, :only_integer => true
  validates_numericality_of :ties, :only_integer => true
  #validates_numericality_of :revenue, :allow_nil => true

#  belongs_to :division
  belongs_to :user
  belongs_to :league
  has_many :players, :inverse_of => :team
  accepts_nested_attributes_for :players, :reject_if => :all_blank, :allow_destroy => true
#  has_and_belongs_to_many :fans
#  has_many :comments, :as => :commentable

  def player_names_truncated
    players.map{|p| p.name}.join(", ")[0..32]
  end
  
  def winning_percentage
    return 0 unless wins > 0
    return (wins.to_f / games_played.to_f).round(2)
  end

  def games_played
    wins + losses + ties
  end

  def color_enum
    ['white', 'black', 'red', 'green', 'blu<e>é']
  end
end
