# Filters added to this controller apply to all controllers in the application.
# Likewise, all the methods added will be available for all controllers.

class ApplicationController < ActionController::Base
  helper :all # include all helpers, all the time
  protect_from_forgery # See ActionController::RequestForgeryProtection for details

  # Scrub sensitive parameters from your log
  # filter_parameter_logging :password
  include AuthenticatedSystem
before_filter :get_user

protected
def get_user
if !(@user = User.find_by_login(params[:user]))
redirect_to :controller => 'welcome', :action => 'directory'
end
end

end
