class ShowrunsController < ApplicationController
http_basic_authenticate_with name: "mod", password: "help22", only: [:destroy]
 
  def index
    @showblog = Showblog.find(params[:showblog_id])
    @showrun = @showblog.showruns.all
   #showblog_showruns GET    /showblogs/:showblog_id/showruns(.:format)
  end


  def create
    @showblog = Showblog.find(params[:showblog_id])
    @showrun = @showblog.showruns.create(params[:showrun].permit!)
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



 def update 
   showblog = Showblog.find(params[:showblog_id])
  @showrun = showblog.showruns.find(params[:id])
   if @showrun.update(params(:showrun).permit!)
    redirect_to showblog_path(@showblog)
#/showblogs/:showblog_id/showruns/:id(.:format
 else
   render 'edit'
 end
 end
def edit
    @showblog = Showblog.find(params[:showblog_id])
    @showrun = @showblog.showruns.find(params.require(showrun: :id).permit!)
     end

# @showblog.showrun.group(:spec_vote).count
end





  
    

 





  