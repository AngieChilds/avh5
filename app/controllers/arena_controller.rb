class ArenaController < ApplicationController

def show
    render(:file => "/arena/show")
end
def index
render(:file => "/arena/index")
end
 end