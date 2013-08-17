module ShowrunsHelper
# <%  @showblog.showruns.group(:spec_vote).count.each do |spec,count| %>
 #Spec: <b><%=" #{spec}"%> </b> Votes: <b> <%=" #{count}" %> </b><br/>
#  <% end %>

  def voted(spec,count)
  logger.error "-------------------------------------------#{@showblog.inspect}"
    @showblog.showruns.group(:spec_vote).count.each do |spec,count|
  " Spec:#{spec} Votes: #{count}"
  logger.error "------------------------------------------#{@showblog.inspect}"
    end
  end
end
