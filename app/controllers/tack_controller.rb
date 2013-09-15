class TackController < ApplicationController
  def show
   end

  def index
 @tack = params[:tack].permit(:tack_item, :skill, :qty)
  end
end
