class Voted < ActiveRecord::Base
   def voted(spec,count)
   @showblog = Showblog.find(params[:showblog_id])
  logger.error "-------------------------------------------#{@showblog.inspect}"
  @voted =  @showblog.showruns.group(:spec_vote).count.each do |spec,count|
  " Spec:#{spec} Votes: #{count}"
  logger.error "------------------------------------------#{@showblog.inspect}"
    end
  end

end
