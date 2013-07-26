class Showrun < ActiveRecord::Base
      belongs_to :showblog
      default_scope -> {order (':event DESC')}

  validates :player, presence: true,
      length: { minimum: 2 }
end
