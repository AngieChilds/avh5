module ArenaHelper
def arena(current_skill,guild)
guild == 1 ? "<br />Arena clicks:#{(current_skill+1)*(current_skill+1)*(1+current_skill/45)/(45).to_i}" : "<br />Arena clicks:#{(current_skill+1)*(current_skill+1)*(1+current_skill/45)/(15).to_i}"
end
end

#(current_skill+1)*(current_skill+1)*(1+current_skill/45)/($TRAINER_COEFICIENTS[player_type]).to_i this is for arena