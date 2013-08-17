class Showrun < ActiveRecord::Base
      belongs_to :showblog
    
  validates :player, presence: true,
      length: { minimum: 2 }
   attr_accessor :voted
  
  def initialize

    @voted = Showblog.where(:showblog_id).joins(:showruns).group(:spec_vote).count

  end


end