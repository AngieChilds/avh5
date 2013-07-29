  class ShowblogsController < ApplicationController
 http_basic_authenticate_with name: "mod", password: "help22", only: [:destroy, :edit]
#before_filter :find_Showblog
#before_filter :rundate_past, :only => [:show, :index]
     
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
     redirect_to action: :show
     end
    
def rundate_past
    @showblog = Showblog.find(params[:id])
       if @showblog.rundate < Time.now - 480.minutes
      @showblog.destroy
    end
  end

   
end

