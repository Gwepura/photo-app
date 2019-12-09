# Load the Rails application.
require_relative 'application'

# Initialize the Rails application.
Rails.application.initialize!

# Mailtrap configuration
ActionMailer::Base.smtp_settings = {
  :address => 'smtp.mailtrap.io',
  :port => '2525',
  :authentication => :cram_md5,
  :user_name => 'ee1f42aa07880b',
  :password => '463fcce9a99e15',
  :domain => 'smtp.mailtrap.io',
  :enable_starttls_auto => true
}