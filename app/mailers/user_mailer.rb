class UserMailer < ActionMailer::Base
  default :from => "john@feiner.at"
  
  # TODO - check this ... 2013-01-02 commented, otherwise rake tests do not work
  #include ActionController::UrlWriter
  
  def confirmation_code(user)
      @user = user
      mail( :to       => user.email ,
            :bcc      => ["john@feiner.at"],
            :subject  => "URM: Please confirm your registration")
  end
  
end
