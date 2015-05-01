class OpencloseController < ApplicationController

  def inventory
    render 'inventory', :layout => false
  end
end
