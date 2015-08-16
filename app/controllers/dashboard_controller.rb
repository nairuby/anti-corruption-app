class DashboardController < ApplicationController
  def index
  end
    def posts
    	 redirect_to(:controller => 'complaints', :action => 'index')
    end
end
