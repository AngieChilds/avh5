class Horselist < ActiveRecord::Base
belongs_to :request

  validates :player, presence: true,
      length: { minimum: 2 }

end
