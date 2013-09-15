class TackController < ApplicationController
  def show
   end

  def index
 @tack = params[:tack]
  end
end
