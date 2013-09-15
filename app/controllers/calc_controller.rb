class CalcController < ApplicationController
  def index
    render 'calc/index'
  end

  def show
  @horse = params[:horse]
  end
end
