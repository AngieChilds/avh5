class ShowrunsController < ApplicationController
http_basic_authenticate_with name: "mod", password: "help22", only: :destroy
  def index
    @showblog = Showblog.find(params[:showblog_id])
    @showrun = @showblog.showruns.all
   #showblog_showruns GET    /showblogs/:showblog_id/showruns(.:format)

  end


  def create
    @showblog = Showblog.find(params[:showblog_id])
@showrun = @showblog.showruns.create(params[:showrun].permit(:player, :spec_vote, :event, :make_other, :note_showrun, :level))
    redirect_to showblog_path(@showblog)
       # new_showblog_showrun GET    /showblogs/:showblog_id/showruns/new(.:format)
  end

  def destroy
    @showshowblog = Showblog.find(params[:showblog_id])
    @showrun = @showblog.showruns.destroy(params[@showrun])
           redirect_to showblog_path(@showblog)
         #  DELETE /showblogs/:showblog_id/showruns/:id(.:format)
   end

   def show
   @showblog = Showblog.find(params[:showblog_id])
     @showrun = @showblog.showruns.find_by_id(params[:id])
#showruns#show PATCH  /showblogs/:showblog_id/showruns/:id(.:format)
    redirect_to showblog_path(@showblog)
    end
      def edit
      @showblog = Showblog.find(params[:showblog_id])
        @showrun = @showblog.showruns.find_by_id(params[:id])
        #showruns#edit showblog_showrun GET /showblogs/:showblog_id/showruns/:id(.:format)
#/showblogs/12/showruns/1/edit
# edit_showblog_showrun_path
  end
 def update
    @showblog = Showblog.find(params[:showblog_id])
    @showrun = @showblog.showruns.update(params[@showrun])
@showrun.update(params[@showrun])
     redirect_to showblog_path(@showblog)
#/showblogs/:showblog_id/showruns/:id(.:format
  end



end

  
    

 





  