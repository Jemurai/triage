class RegistrationsController < Devise::RegistrationsController
  
  def new
    super
  end
  
  def create
    super
    if current_user != nil and current_user.email != nil
      logger.debug current_user
      @message = Message.new("name"=>current_user.email, "email"=>current_user.email, "subject"=>"New User Registration", "body"=>"New User signup #{current_user.email}");
      NotificationsMailer.new_message(@message).deliver
    end
  end
  
  def update
    super
  end
end