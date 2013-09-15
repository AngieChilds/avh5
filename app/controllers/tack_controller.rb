class TackController < ApplicationController
  def show
  @tack = params[:tack]
  end

  def index
 render 'tack/index'
  end
end
