class OpencloseController < ApplicationController
  def open
    render 'open', :layout => false
  end

  def close
    render 'close', :layout => false
  end

  def inventory
    render 'inventory', :layout => false
  end
end
