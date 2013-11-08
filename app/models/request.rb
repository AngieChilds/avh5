class Request < ActiveRecord::Base
has_many :horselists, dependent: :destroy
      validates :spec, presence: true,
      length: { minimum: 2 }

end
