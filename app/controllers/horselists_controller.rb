class HorselistsController < ApplicationController
 
  def index
    @horselist = @request.horselists.all
  end

  
  def show
 @request = Request.find(params[:request_id])
 @horselist = @request.horselists.find(params[:id])

  end

   
  def create
    @request = Request.find(params[:request_id])
    @horselist = @request.horselists.create
 redirect_to request_path(@request)
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
 if @horselist.update(params[:horselist].permit(:player, :horse, :currant_level, :date, :note, :range, :range1, :range2, :range3, :range4, :range5, :range6, :range7, :range6, :range7, :range8, :range9, :range10 ))
 redirect_to request_path(@request.horselist, @horselist)
 else
   render 'edit'
 end
  end


end




