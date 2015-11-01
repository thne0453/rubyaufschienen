class HomeController < ApplicationController
  
  before_filter :set_breadcrumbs
  
  def ping
  end
  
  def pong
  end
  
  def index
  end
  
  def reset
    reset_session
    @breadcrumbs = nil
  end
  
  private
  
  def set_breadcrumbs
    @breadcrumbs = session[:breadcrumbs]
    @breadcrumbs ||= Array.new
    @breadcrumbs.push(request.url)
    @breadcrumbs.shift if @breadcrumbs.count > 3
    session[:breadcrumbs] = @breadcrumbs
  end
  
end
