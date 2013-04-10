class NotificationsMailer < ActionMailer::Base

  default :from => "info@jemurai.com"
  default :to => "mkonda@jemurai.com"

  def new_message(message)
    @message = message
    mail(:subject => "Jemurai.com #{message.subject}")
  end

end
