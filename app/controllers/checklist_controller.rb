class ChecklistController < ApplicationController

  def show
    today = Date.today
    if open?
      open = Open.find_or_create_by(date: today)
      redirect_to edit_open_path(open)
    else
      close = Close.find_or_create_by(date: today)
      redirect_to edit_close_path(close)
    end
  end

  private

  def open?
    Time.now.hour < 14
  end
end
