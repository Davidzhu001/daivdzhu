class ApplicationController < ActionController::Base
  # Prevent CSRF attacks by raising an exception.
  # For APIs, you may want to use :null_session instead.
  protect_from_forgery with: :exception
  include SessionsHelper

    # Confirms a logged-in user.
    def logged_in_user
      unless logged_in?
        store_location
        flash[:danger] = "Please log in."
        redirect_to login_url
      end
    end

  def send_simple_message
    RestClient.post "https://api:key-86feafc576749dec5a5f07ab603c330d"\
    "@api.mailgun.net/v2/sandbox670a499cfd5844ae990462dadbb56a37.mailgun.org/messages",
    :from => "Mailgun Sandbox <postmaster@sandbox670a499cfd5844ae990462dadbb56a37.mailgun.org>",
    :to => "DAVIDZHU <zhu252098868@163.com>",
    :subject => "Hello DAVIDZHU",
    :text => "Congratulations DAVIDZHU, you just sent an email with Mailgun!  You are truly awesome!  You can see a record of this email in your logs: https://mailgun.com/cp/log .  You can send up to 300 emails/day from this sandbox server.  Next, you should add your own domain so you can send 10,000 emails/month for free."
  end
end
