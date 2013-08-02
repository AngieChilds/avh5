class ShowrunsController < ApplicationController
http_basic_authenticate_with name: "mod", password: "help22", only: :destroy
 
  def index
    @showrun = @showblog.showruns.all
   #showblog_showruns GET    /showblogs/:showblog_id/showruns(.:format)
  end


  def create
    @showrun = Showblog.find(params[:showblog_id])
    @showrun = @showblog.showruns.create(params[:showrun].permit(:player, :event, :spec_vote, :level, :make_other, :note_showrun))
    if @showrun.save
    redirect_to showblog_path(@showblog)
    else
      renden "new"
       # new_showblog_showrun GET    /showblogs/:showblog_id/showruns/new(.:format)
  end
  end
  



  def destroy
     @showblog = Showblog.find(params[:showblog_id])
    @showrun = @showblog.showruns.find(params[:id])
    @showrun.destroy
     redirect_to showblog_path(@showblog)
         #  DELETE /showblogs/:showblog_id/showruns/:id(.:format)
 end
   
 def show
    @showrun = Showblog.find(params[:showblog_id])
    @showrun = @showblog.showruns.find(params[:id])
#showruns#show PATCH  /showblogs/:showblog_id/showruns/:id(.:format)
    redirect_to showblog_path(@showblog)
end

def edit
   @showrun = Showblog.find(params[:showblog_id])
      @showrun = @showblog.showruns.find(params[:id])

        #showruns#edit showblog_showrun GET /showblogs/:showblog_id/showruns/:id(.:format)
#/showblogs/12/showruns/1/edit
edit_showblog_showrun_path
end

 def update 
   @showrun = Showblog.find(params[:showblog_id])
  if @showblog.showruns.update(params[:showrun].permit(:player, :event, :spec_vote, :level, :make_other, :note_showrun))
    redirect_to showblog_path(@showblog)
#/showblogs/:showblog_id/showruns/:id(.:format
 else
   render 'edit'
 end
 end



end

  
    

 





  