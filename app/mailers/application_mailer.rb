class ApplicationMailer < ActionMailer::Base
  default from: Settings.email.mailer_from
  layout 'mailer'
end
