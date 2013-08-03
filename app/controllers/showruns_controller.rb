class ShowrunsController < ApplicationController
http_basic_authenticate_with name: "mod", password: "help22", only: [:destroy, :edit]
 
  def index
    @showrun = @showblog.showruns.all
   #showblog_showruns GET    /showblogs/:showblog_id/showruns(.:format)
  end


  def create
    @showblog = Showblog.find(params[:showblog_id])
    @showrun = @showblog.showruns.create(params[:showrun].permit(:player, :event, :spec_vote, :level, :make_other, :note_showrun))
    redirect_to showblog_path(@showblog)
    # new_showblog_showrun GET    /showblogs/:showblog_id/showruns/new(.:format)
  end
  



  def destroy
     @showblog = Showblog.find(params[:showblog_id])
    @showrun = @showblog.showruns.find(params[:id])
    @showrun.destroy
     redirect_to showblog_path(@showblog)
         #  DELETE /showblogs/:showblog_id/showruns/:id(.:format)
 end
   
 def show
    @showblog = Showblog.find(params[:showblog_id])
    @showrun = @showblog.showruns.find(params[:id])
#showruns#show PATCH  /showblogs/:showblog_id/showruns/:id(.:format)
    redirect_to showblog_path(@showblog)
end

def edit
   showblog = Showblog.find(params[:showblog_id])
   @showrun = showblog.showruns.find(params[:id])
end

 def update 
   showblog = Showblog.find(params[:showblog_id])
  @showrun = showblog.showruns.find(params[:id])
   if @showrun.update(params[:showrun].permit(:player, :event, :spec_vote, :level, :make_other, :note_showrun))
    redirect_to showblog_path(@showrun.showblog, @showrun)
#/showblogs/:showblog_id/showruns/:id(.:format
 else
   render 'edit'
 end
 end



end

  
    

 





  