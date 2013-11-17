class Showblog < ActiveRecord::Base
      
  has_many :showruns,  dependent: :destroy
       validates :name, presence: true,
      length: { minimum: 2 }


  def self.all_ordered_by_showruns
   includes(:event).order('event.attribute ASC')
end


end

