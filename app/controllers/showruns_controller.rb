class ShowrunsController < ApplicationController
http_basic_authenticate_with name: "mod", password: "help22", only: :destroy
  def index
    @showblog = Showblog.find(params[:showblog_id])
    @showrun = @showblog.showruns.all
    end
  

  def create
    @showblog = Showblog.find(params[:showblog_id])
@showrun = @showblog.showruns.create(params[:showrun].permit(:player, :spec_vote, :event, :make_other, :note_showrun, :level))
    redirect_to showblog_path(@showblog)
        end
    
  def destroy
    @showshowblog = Showblog.find(params[:showblog_id])
    @showrun = @showblog.showruns.find_by_id(params[:id])
    @showrun = @showblog.showruns.destroy
       redirect_to showblog_path(@showblog)
   end

   def show
    @showshowblog = Showblog.find(params[:showblog_id])
    @showrun = @showblog.showruns.find_by_id(params[:id])
@showrun.destroy
    redirect_to showblog_path(@showblog)
    end
      def edit
       @showshowblog = Showblog.find(params[:showblog_id])
       @showrun = Showblog.showruns.find_by_id(params[:id])
  end
 def update
    @showblog = Showblog.find(params[:showblog_id])
    @showrun = @showblog.showruns.update(params[@showrun])
@showrun.update(params[@showrun])
     redirect_to showblog_path(@showblog)

  end
   
# /showblogs/:showblog_id/showruns/:id(.:format)


  end

  


  