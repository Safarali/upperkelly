class MessageMailer < ApplicationMailer

  def message_now(message)
    @message = message
    mail to: ENV['MAIL_RECEIVER'], from: @message.name, subject: "You have a new message from UpperKelly"
  end
end
