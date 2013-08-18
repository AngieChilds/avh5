module ApplicationHelper
 def vote_spec(showblog)
  result = ''
  showblog.showruns.group(:spec_vote).count.each do |spec,count|
    result << "Spec: #{spec}  Votes: #{count} <br/>"
    # or the other logic you want to add such as using a table or div
  end
  result.html_safe
end


end
