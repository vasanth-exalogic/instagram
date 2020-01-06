class VotesController < ApplicationController

  def new
    pin = Pin.find(params[:id])
    if pin.votes.create(user_id: current_user.id)
      redirect_to '/plan/success'
    else
      redirect_to '/plan/failed'
    end
  end
end
