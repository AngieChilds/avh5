class Showblog < ActiveRecord::Base
      has_many :showruns, -> { order(:event => :desc) }, dependent: :destroy
      validates :name, presence: true,
      length: { minimum: 2 }
  
end

