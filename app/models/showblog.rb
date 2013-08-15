class Showblog < ActiveRecord::Base
      has_many :showruns, dependent: :destroy
      validates :name, presence: true,
      length: { minimum: 2 }

def self.search(voted)
Showblog.where("showblog_id =?", showblog_id).joins(:showruns).group(:spec_vote).count
end

  
end

