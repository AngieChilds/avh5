module ShowblogsHelper
def count_votes
  @showblog = Showblog.find(params[:showblog_id])
  count_votes = Showblog.where(:showblog_id).joins(:showruns).group(:spec_vote).count

 "  Vote Results #{count_votes}"

end

end
