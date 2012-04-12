class UserMailer < ActionMailer::Base
  default :from => "urm@feiner.at"
  
  include ActionController::UrlWriter
  
  def confirmation_code(user)
      from "URM-Admin <urm@feiner.at>"
      recipients user.email
      subject 'Please confirm your registration'
      body :user => user
      sent_on Time.now
  end
  
end