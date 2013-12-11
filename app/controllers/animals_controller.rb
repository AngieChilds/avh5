class AnimalsController < ApplicationController
def index
  @animals = Animal.all
end

def show
    @animal = Animal.find(params[:id])
  end

  def edit
    @animal = Animal.find(params[:id])
  end

  def update
    @animal = Animal.find(params[:id])
    if @animal.feed(params[:animal].permit(:food, :hunger, :name))
      
       redirect_to action: :index, id: @animal.id
   else
     render 'edit'
    end
  end
  
  def new
    @animal = Animal.new
  end

  def create
    @animal = Animal.new(params[:animal].permit(:breed, :owner))
    if @animal.save
      flash[:notice] = "you have a new animal"
      redirect_to action: :index, id: @animal.id
    else
      render :new
    end
  end
def destroy
   @animal = Animal.find(params[:id])
   @animal.destroy
   redirect_to animals_url
end

 
end

