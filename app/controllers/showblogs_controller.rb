  class ShowblogsController < ApplicationController
 http_basic_authenticate_with name: "mod", password: "help22", only: [:destroy, :edit]
helper_method :sort_column, :sort_direction
#before_filter :rundate_past
     
    def index
        @showblogs = Showblog.all
    end
def show
    @showblog = Showblog.find(params[:id])
   
  end

  def edit
    @showblog = Showblog.find(params[:id])
  end

 def update
   @showblog = Showblog.find(params[:id])
   if @showblog.update(params[:showblog].permit(:name, :rundate, :spec_choice, :level_range, :note))
  
 redirect_to action: :index, id: @showblog.id
   else
     render 'edit'
  end
 end

def new
    @showblog = Showblog.new
end

 def create
    @showblog = Showblog.create(params[:showblog].permit(:name, :rundate, :spec_choice, :level_range, :note))
  if @showblog.save
      redirect_to action: :index, id: @showblog.id
    else
      render 'new'
    end
  end

def destroy
    @showblog = Showblog.find(params[:id])
    @showblog.destroy
   redirect_to showblogs_url
end
private
def rundate_past
@showblogs = Showblog.all
@showblog = Showblog.find(params[:id]) 
if Showblog.where(:rundate => ' < Time.now - 480.minutes' )
@showblog.destroy
redirect_to showblogs_url
end
end
private
def sort_column
  Showblog.showruns.column_names.includes?(params[:sort]) ? params[:sort] : "player"
end
def sort_direction
  %w[asc desc].include?(params[:direction]) ? params[:direction] : "asc"
end


end

