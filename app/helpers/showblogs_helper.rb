module ShowblogsHelper
  def voted(spec,count)
  logger.error "-------------------------------------------#{@showblog.inspect}"
  @voted =  @showblog.showruns.group(:spec_vote).count.each do |spec,count|
  " Spec:#{spec} Votes: #{count}"
  logger.error "------------------------------------------#{@showblog.inspect}"
    end
  end

  

end
