class InventoryMailer < ActionMailer::Base
  default from: "kamas.snow@gmail.com"

  def submit(inventory)
    @inventory = inventory
    mail(to: "kamas.snow@gmail.com", subject: "Low inventory: #{inventory.date.strftime("%A, %B %e")}")
  end
end
