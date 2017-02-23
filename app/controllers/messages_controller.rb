class MessagesController < ApplicationController

  def new
    @message = Message.new
  end

  def create
    @message = Message.new(message_params)
    if @message.valid?
      MessageMailer.message_now(@message).deliver_now
      flash[:notice] = "Thanks #{@message.name}."
      redirect_to root_path
    else
      flash.now[:alert] = "All fields required!"
      render :new
    end
  end

  private

    def message_params
      params.require(:message).permit(:name, :phone, :content)
    end
end
