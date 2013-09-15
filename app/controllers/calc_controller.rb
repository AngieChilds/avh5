class CalcController < ApplicationController

def show
 @horse = params[:horse]
  render(:file => "/calc/show")
end
def index
render(:file => "/calc/index")
end
 end
 
 


  
  
  
