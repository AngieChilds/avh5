class Showblog < ActiveRecord::Base
      has_many :showruns, dependent: :destroy
      validates :name, presence: true,
      length: { minimum: 2 }

  
end

