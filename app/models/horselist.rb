class Horselist < ActiveRecord::Base
belongs_to :request

  validates :player, presence: true,
      length: { minimum: 2 }
has_many :ranges
accepts_nested_attributes_for :ranges


end
