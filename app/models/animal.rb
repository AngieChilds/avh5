class Animal < ActiveRecord::Base
  def feed
    animal.food = (:food - 1).to_i
    animal.hunger = (:hunger + 1).to_i
  end
  
  
  
  
end