module ApplicationHelper
 def vote_spec(showblog)
  result = ''
  showblog.showruns.group(:spec_vote).count.each do |spec,count|
    result << "Spec: #{spec}  Votes: #{count} <br/>"
    # or the other logic you want to add such as using a table or div
  end
  result.html_safe
end
def rundate_past(showblog)
 @showblog = Showblog.find(params[:id])
showblog.where(:rundate => ' < Time.now - 480.minutes' ).destroy
    
    end


end
