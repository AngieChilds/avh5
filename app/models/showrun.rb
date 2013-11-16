class Showrun < ActiveRecord::Base
      attr_accessible :player, :showblog_id
  belongs_to :showblog
    
  validates :player, presence: true,
      length: { minimum: 2 }
  
end
