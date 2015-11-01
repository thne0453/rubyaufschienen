class HomeController < ApplicationController
  
  def set_cookies
    cookies.permanent.signed[:user_name]   = "Horst Meier" 
    cookies.permanent.signed[:kundenummer] = "1234567890" 
  end

  def show_cookies
    @user_name    = cookies.signed[:user_name]
    @kundennummer = cookies.signed[:kundenummer]
  end

  def delete_cookies
    cookies.delete :user_name
    cookies.delete :kundenummer
  end

  def debug_cookies
  end
  
end