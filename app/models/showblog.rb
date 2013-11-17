class Showblog < ActiveRecord::Base
      
  has_many :showruns.includes(:event).order(' showrun.event DESC '), dependent: :destroy
      accepts_nested_attributes_for :showruns
  validates :name, presence: true,
      length: { minimum: 2 }
  
end

