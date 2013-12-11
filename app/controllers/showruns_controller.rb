class ShowrunsController < ApplicationController
http_basic_authenticate_with name: "mod", password: "help22", only: [:destroy]

  def index
    @showblog = Showblog.find(params[:showblog_id])
    @showrun = @showblog.showruns.find(:all, :order => 'event')

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
   if @showrun.update(params.require(:showrun).permit!)
    redirect_to showblog_path(@showblog)
#/showblogs/:showblog_id/showruns/:id(.:format
 else
   render 'edit'
 end
 end
def edit
    @showblog = Showblog.find(params[:showblog_id])
    @showrun = @showblog.showruns.find(params.require[:id].permit!)
     end

private
def sort_column
  @showblog.showruns.column_names.includes?(params[:sort]) ? params[:sort] : "player"
end
def sort_direction
  %w[asc desc].include?(params[:direction]) ? params[:direction] : "asc"
end

end






  
    

 





  