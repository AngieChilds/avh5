class HorselistsController < ApplicationController


  def index
    @horselist = @request.horselists.all
  end
 def create
    @request = Request.find(params[:request_id])
    @horselist = @request.horselists.create(params[:horselist].permit(:player, :horse, :currant_level, :range, :range1, :range2, :range3, :range4, :range5, :range6, :range7, :range6, :range7, :range8, :range9, :range10, :date, :note ))
 redirect_to request_path(@request)
  end



  
  def show
 @request = Request.find(params[:request_id])
 @horselist = @request.horselists.find(params[:id])

  end

   
 

  def destroy
 @request = Request.find(params[:request_id])
 @horselist = @request.horselists.find(params[:id])
 @horselist.destroy
 redirect_to request_path(@request)

  end
  def update
    @request = Request.find(params[:request_id])
 @horselist = @request.horselists.find(params[:id])
 if @horselist.update(params[:horselist].permit(:player, :horse, :currant_level, :range, :range1, :range2, :range3, :range4, :range5, :range6, :range7, :range6, :range7, :range8, :range9, :range10, :date, :note ))
 redirect_to request_path(@request.horselist, @horselist)
 else
   render 'edit'
 end
  end


end




