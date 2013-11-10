class RequestsController < ApplicationController
   def index
    @requests = Request.all
  end

  
  def show
    @request = Request.find(params[:id])
  end

 
  def new
    @request = Request.new
  end

  
  def edit
    @request = Request.find(params[:id])
  end

  
  def create
    @request = Request.create(params[:request].permit(:spec, :date, :note))

      if @request.save

      redirect_to action: :index, id: @request.id
    else
      render 'new'
    end


  end

 
  def update
    @request = Request.find(params[:id])
       if @request.update(params[:request].permit(:spec, :date, :note))
        redirect_to action: :index, id: @request.id
        else
        render 'edit'
    end
  end

  
  def destroy
    @request = Request.find(params[:id])
    @request.destroy
   redirect_to requests_url
    end
    
end
