class ApplicationMailer < ActionMailer::Base
  default from: "kamas.snow@gmail.com"

  def submit(params)
    @params = params
    mail(to: "kamas.snow@gmail.com", subject: "application: #{params[:name]}")
  end
end
