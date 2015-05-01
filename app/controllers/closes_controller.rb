class ClosesController < ApplicationController
  before_action :set_close, only: [:show, :edit, :update, :destroy]
  layout "checklists"

  def close
    close = Close.find_or_create_by(date: Date.today)
    redirect_to edit_close_path(close)
  end

  def index
    @closes = Close.all
  end

  def show
  end

  def new
    @close = Close.new
  end

  def edit
  end

  def create
    @close = Close.new(close_params)

    respond_to do |format|
      if @close.save
        format.html { redirect_to @close, notice: 'Checklist was saved!' }
        format.json { render action: 'show', status: :created, location: @close }
      else
        format.html { render action: 'new' }
        format.json { render json: @close.errors, status: :unprocessable_entity }
      end
    end
  end

  def update
    respond_to do |format|
      if @close.update(close_params)
        format.html { redirect_to @close, notice: 'Checklist was saved!' }
        format.json { head :no_content }
      else
        format.html { render action: 'edit' }
        format.json { render json: @close.errors, status: :unprocessable_entity }
      end
    end
  end

  def destroy
    @close.destroy
    respond_to do |format|
      format.html { redirect_to closes_url }
      format.json { head :no_content }
    end
  end

  private

  def set_close
    @close = Close.find(params[:id])
  end

  def close_params
    params.require(:close).permit(:date, :speaker_down, :close_awnings, :outside_trash,
      :close_umbrellas, :gray_water, :quarters, :ones, :fives, :tens, :twenties,
      :total, :envelope, :hide_cash_box, :sugar_water, :counters, :syrup_bottles,
      :remove_ice, :wipe_shaver, :wash_dishes, :street, :empty_sani, :dirty_rags,
      :trash_cans, :floor, :pump_off, :garbage_can_in, :water_off, :lock_freezer,
      :lock_awnings, :clock_out, :hide_ipad, :lock_trailer, :throw_trash, :deliver_stuff)
  end
end
