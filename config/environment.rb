# Load the Rails application.
require File.expand_path('../application', __FILE__)

# Initialize the Rails application.
Rails.application.initialize!

def send_simple_message
  RestClient.post "https://api:key-3ax6xnjp29jd6fds4gc373sgvjxteol0"\
  "@api.mailgun.net/v2/samples.mailgun.org/messages",
  :from => "Excited User <me@samples.mailgun.org>",
  :to => "bar@example.com, baz@example.com",
  :subject => "Hello",
  :text => "Testing some Mailgun awesomness!"
end
