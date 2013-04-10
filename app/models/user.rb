class User < ActiveRecord::Base
  rolify

  # Include default devise modules. Others available are:
  # :token_authenticatable, :confirmable,
  # :lockable, :timeoutable and :omniauthable
  devise :database_authenticatable, :registerable,
         :recoverable, :rememberable, :trackable, :validatable

  # Setup accessible (or protected) attributes for your model
  attr_accessible :email, :password, :password_confirmation, :remember_me, :timezone
  # attr_accessible :title, :body
  
#  validate :password_complexity

  def password_complexity
    if password.present? and not password.match(/^(?=.*[a-z])(?=.*[A-Z])(?=.*\d).+/)
      errors.add :password, "must include at least one lowercase letter, one uppercase letter, and one digit"
    end
    if ! timezone.present?
      timezone = "Eastern Time (US & Canada)"
      puts "Setting user timezone because not specified on input."
    end
  end
  
  def my_tz
    if ! timezone.present?
      timezone = "Eastern Time (US & Canada)"
    end
    return timezone
  end
end
