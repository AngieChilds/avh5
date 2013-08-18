module ShowblogsHelper
  def voted (spec,count)
 @voted = @showblog.showruns.group(:spec_vote).count.each do |spec,count|

    " Spec:#{spec} Votes: #{count} "


logger.error "-----------helper-------------------------------#{@showblog.inspect}"
 end

 end
  
 end
  

  


