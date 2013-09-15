module TackHelper
#class Tackset
#  def initialize
#   @wood_total = 0
#    @iron_total = 0
#    @water_total = 0
#    @thread_total = 0
#    @glue_total = 0
#    @leather_total = 0
#    @wool_total = 0
#flattened_iron_bar = {:use => {:water => 3, :iron => 4, :wood => 4}}
#cloth = {:use => {:thread => 2}}
#saddle_tree = {:use => {:wood => 3}}
#bit = {:use => {:wood => 2, :water => 2, :iron => 3}}
#leather_straps = {:use => {:leather => 1}}
#saddle_leather = {:use => {:leather => 2}}
#bridle = {:use => {:thread => 1, :glue => 1}} + {:item => {:leather_straps => 1, :bit => 1,}}
#saddle = {:item => {:saddle_leather => 1, :saddle_tree => 1 }} + {:use => {:glue => 1, :wool => 2, :thread => 1}}
#horseshoes = {:item => {:flattened_iron_bar =>1}} + {:use => {:water => 3, :iron => 1}}
#saddle_pad = {:item => {:cloth => 2}} + {:use => {:thread => 1}}
#horse_boots = {:item => {:cloth => 1}} + {:use => {:thread => 1}}
def get_factor(skill)
skill = 100 if skill < 100
return "#{(1+skill/99.9)}"
end

def tack_calc(tack_item,skill,qty)

qty = 1 if qty < 1
skill = (skill * 1).to_i
  case tack_item
    #full set
  when 0 then "<br/>Iron: #{(8 * skill * qty).to_i}<br/> Wood: #{(9 * skill * qty).to_i}<br/> Water: #{(8 * skill * qty).to_i} <br/>Glue: #{(2 * skill * qty).to_i}<br/> Wool: #{(2 * skill * qty).to_i}<br/> Thread: #{(10 * skill * qty).to_i}<br/> Leather: #{(3 * skill * qty).to_i}<br/>Player clicks #{(13 * qty).to_i}"
    #bridle
 when 1 then "<br/>Iron: #{(3 * skill * qty).to_i}<br/> Wood: #{(2 * skill * qty).to_i}<br/> Water: #{(2 * skill * qty).to_i} <br/>Glue: #{(1 * skill * qty).to_i}<br/> Thread: #{(1 * skill * qty).to_i}<br/> Leather: #{(1 * skill * qty).to_i}<br/>Player clicks #{(3 * qty).to_i}"
   #shoe
 when 2 then "<br/>Iron: #{(5 * skill * qty).to_i}<br/> Wood: #{(4 * skill * qty).to_i}<br/>Water: #{(6 * skill * qty).to_i}<br/>Player clicks #{(2 * qty).to_i}"
   #pad
 when 3 then "<br/>Thread: #{(5 * skill * qty).to_i}<br/>Player clicks #{(3 * qty).to_i}"
   #boot
 when 4 then "<br/>Thread: #{(3 * skill * qty).to_i}<br/>Player clicks #{(2 * qty).to_i}"
   #saddle
 when 5 then "<br/>Wood: #{(3 * skill * qty).to_i}<br/>Glue: #{(1 * skill * qty).to_i}<br/> Wool: #{(2 * skill * qty).to_i}<br/> Thread: #{(1 * skill * qty).to_i}<br/> Leather: #{(2 * skill * qty).to_i}<br/>Player clicks #{(3 * qty).to_i}"
 end


end
end
