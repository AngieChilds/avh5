class ShowrunsController < ApplicationController
http_basic_authenticate_with name: "mod", password: "help22", only: :destroy
 before_filter :load_showblog
  def index
    @showrun = @showblog.showruns.all
   #showblog_showruns GET    /showblogs/:showblog_id/showruns(.:format)
  end


  def create
    @showrun = @showblog.showruns.create(params[:showrun].permit(:player, :spec_vote, :event, :make_other, :note_showrun, :level))
    redirect_to showblog_path(@showblog)
       # new_showblog_showrun GET    /showblogs/:showblog_id/showruns/new(.:format)
  end

  def destroy
    @showrun = @showblog.showruns.find_by_id(params[:id])
    @showrun.destroy
     redirect_to showblog_showruns_path(@showblog)
         #  DELETE /showblogs/:showblog_id/showruns/:id(.:format)
   end
  
  



   def show
    @showrun = @showblog.showruns.find_by_id(params[:id])
#showruns#show PATCH  /showblogs/:showblog_id/showruns/:id(.:format)
    redirect_to showblog_showruns_path(@showblog)
    end
      def edit
      @showrun = @showblog.showruns.find_by_id(params[:id])

        #showruns#edit showblog_showrun GET /showblogs/:showblog_id/showruns/:id(.:format)
#/showblogs/12/showruns/1/edit
# edit_showblog_showrun_path
  end
 def update

 @showrun = @showblog.showrun.find_by_id(params[:id])
 @showrun = @showblog.showruns.update(params[@showblog, @showrun])

     redirect_to showblog_showruns_path(@showblog, @showrun)
#/showblogs/:showblog_id/showruns/:id(.:format

 end


private
def load_showblog
 Showblog.find(params[:showblog_id])
end
end

  
    

 





  