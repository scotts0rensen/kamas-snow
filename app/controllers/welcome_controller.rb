class WelcomeController < ApplicationController
  def apply
  end

  def submit
    redirect_to confirm_path
  end

  def confirm
  end
end
