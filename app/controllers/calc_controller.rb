class CalcController < ApplicationController
  def index
    render 'calc/index'
  end

  def show
  @horse = params[:horse]
  render(:file => "/calc/show")
  end
end
