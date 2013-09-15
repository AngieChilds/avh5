module CalcHelper
  def get_factor_from(horse)
	type_bonus = (horse[:gender].to_i == 1 ? 32.0 : 25.0)
	title_bonus = [1,1.02,1.04,1.06,1.08,1.10,1.12,1.14,1.16,1.18,1.20]
	return "#{(type_bonus) * (title_bonus[horse[:title].to_i])}"
end
def calc_show(guild,events,level,factor)
guild ||=
events = (events * 1).to_i
level = (level * 1).to_i
cap = (level * 2)
use_events = ((events < cap) ? events : cap)
use_events = 10 if use_events < 10
xp_req = (level)**2 * (1000) - (level-1)**2 * (1000)
shows_req = (xp_req) / (use_events * factor)#chest pays, if less than level 55, less than 50 events.
cost = level * events * 15 * shows_req

case guild
when 0
#rider
"<br/>Level: <strong>#{level}</strong><br/>Events:<strong> #{(events).to_i}</strong><br/>Count:<strong> #{shows_req}</strong><br/>Cost:<strong> #{(cost * 0.75).to_i}</strong>"
  when 1
#equilibrium
"<br/>Level:<strong> #{level}</strong><br/>Events:<strong> #{(events).to_i}</strong><br/>Count:<strong> #{shows_req}</strong><br/>Cost:<strong> #{(cost * 0.45).to_i}</strong>"
else
"<br/>Level:<strong> #{level}</strong><br/>Events:<strong> #{(events).to_i}</strong><br/>Count:<strong> #{shows_req}</strong><br/>Cost:<strong> #{(cost).to_i}</strong>"
end
end
end
