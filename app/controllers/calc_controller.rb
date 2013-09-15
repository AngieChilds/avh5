class CalcController < ApplicationController
  def index
  end

  def show
  @horse = params[:horse]
  end
end
