module ShowblogsHelper
def vote_spec(showblog)
  result = ''
  showblog.showruns.group(:spec_vote).count.each do |spec,count|
    result << "Spec: #{spec}  Votes: #{count} <br/>"
    # or the other logic you want to add such as using a table or div
  end
  result.html_safe
end
def sort_event
  showblog.showruns.group(:event).order('event asc')
end
#default_scope { order ('event') }
 end
  

  


