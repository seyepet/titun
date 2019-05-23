class ApplicationMailer < ActionMailer::Base
  default from: "akobelimited@gmail.com"

  def sample_email(user)
    @user = user
    mail(to: @user.email, subject: 'We Thank You for Signing Up to www.akobe.org')
  end
end

