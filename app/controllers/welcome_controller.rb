class WelcomeController < ApplicationController
  def apply
  end

  def submit
    ApplicationMailer.submit(params).deliver
    redirect_to confirm_path
  end

  def confirm
  end
end
