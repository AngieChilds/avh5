class Showrun < ActiveRecord::Base
      belongs_to :showblog
    
  validates :player, presence: true,
      length: { minimum: 2 }
   attr_accessor :voted
  
 

end