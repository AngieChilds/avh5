class AnimalController < ApplicationController
def new
    @animal = Animal.new
end
def update
    @animal = Animal.find(params[:id])
    if @animal.update(params[:animal].permit(:type, :owner, :name, :hunger, :food))
     redirect_to action: :index, id: @animal.id
     else
      render 'edit'
    end
end
  
def index
    @animals = Animal.all
end

def show
    @animal = Animal.find(params[:id])
end

def edit
    @animal = Animal.find(params[:id])
end

def create
    @animal = Animal.create(params[:animal].permit(:type, :owner, :name, :hunger, :food))
    if animal.save
      redirect_to action: :index, id: @animal.id
    else
      render 'new'
    end
end
def destroy
  @animal = Animal.find(params[:id])
  @animal.destroy
  redirect_to animals_url

end

end
