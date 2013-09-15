module TackHelper
def tack_calc(tack_item,skill,qty)
qty = 1 if qty < 1
skill = (1+skill/99.9).to_i
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
