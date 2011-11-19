#encoding: utf-8

class GameController < ApplicationController
  layout 'game'

  def index
  end

  def stay_updated
    Registration.create params[:registration]
    flash[:notice] = "Merci à vous"
    redirect_to :root
  end
end

