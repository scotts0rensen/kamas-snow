class OpencloseController < ApplicationController
  def open
    render 'open', :layout => false
  end

  def close
    render 'close', :layout => false
  end
end