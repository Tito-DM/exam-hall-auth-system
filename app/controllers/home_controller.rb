class HomeController < ApplicationController

  def index
  session[:setting] = ""
  end

  def verification
    session[:setting] = ""
  end
end