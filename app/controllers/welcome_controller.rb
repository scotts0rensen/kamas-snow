class WelcomeController < ApplicationController
  def apply
  end

  def submit
    ApplicationMailer.submit(params).deliver
    redirect_to confirm_path
  end

  def confirm
  end

  def mailer_params
    params.except(:utf8).except(:authenticity_token).except(:commit).except(:action).except(:controller)
  end
end
