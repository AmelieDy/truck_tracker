class MessagesController < ApplicationController
  def new
    @truck = Truck.find params[:id]
    @truck.update(state: 1)
    MessageMailer.submission(@truck).deliver_now
  end

  private

  def message_params
    params.require(:message).permit(:email)
  end

end
