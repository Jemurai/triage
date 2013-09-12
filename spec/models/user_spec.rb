require 'spec_helper'

describe User do
  before(:each) do
    @user = User.new
    @user.email = "hi@hi.com"
  end
    
  it "should not allow short passwords" do
    @user.password = "hi1B"
    @user.save
    @user.errors.should have(1).messages
    @user.errors.messages[:password].should eql ["is too short (minimum is 8 characters)"]
  end

  it "should not allow passwords without a digit" do
    @user.password = "highthere"
    @user.save
    @user.errors.should have(1).messages
    @user.errors.messages[:password].should eql ["must include at least one lowercase letter, one uppercase letter, and one digit"]
  end
  
  it "should not allow passwords without an alpha" do
    @user.password = "32434234324"
    @user.save
    @user.errors.should have(1).messages
    @user.errors.messages[:password].should eql ["must include at least one lowercase letter, one uppercase letter, and one digit"]
  end

  it "should accept complex passwords with a lower, upper and digit" do
      @user.password = "Passw0rd!"  
      @user.save
      @user.errors.should be_empty
  end
  
end
