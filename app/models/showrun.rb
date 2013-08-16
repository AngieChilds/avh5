class Showrun < ActiveRecord::Base
      belongs_to :showblog
    
  validates :player, presence: true,
      length: { minimum: 2 }
    voted = Showblog.where(:showblog_id).joins(:showruns).group(:spec_vote).count(column_name, options) { |i|  }  



end
