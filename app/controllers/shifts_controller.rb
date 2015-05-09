class ShiftsController < ApplicationController
  before_action :set_shift, only: [:show, :edit, :update, :destroy]
  layout "checklists"

  def shift
    shift = Shift.find_or_create_by(date: Date.today)
    redirect_to edit_shift_path(shift)
  end

  def index
    @shifts = Shift.all
  end

  def show
  end

  def new
    @shift = Shift.new
  end

  def edit
  end

  def create
    @shift = Shift.new(shift_params)

    respond_to do |format|
      if @shift.save
        format.html { redirect_to @shift }
        format.json { render action: 'show', status: :created, location: @shift }
      else
        format.html { render action: 'new' }
        format.json { render json: @shift.errors, status: :unprocessable_entity }
      end
    end
  end

  def update
    respond_to do |format|
      if @shift.update(shift_params)
        format.html { redirect_to @shift }
        format.json { head :no_content }
      else
        format.html { render action: 'edit' }
        format.json { render json: @shift.errors, status: :unprocessable_entity }
      end
    end
  end

  def destroy
    @shift.destroy
    respond_to do |format|
      format.html { redirect_to shifts_url }
      format.json { head :no_content }
    end
  end

  private

  def set_shift
    @shift = Shift.find(params[:id])
  end

  def shift_params
    params.require(:shift).permit(:date, :fill_paper, :fill_flavors, :fill_scm, :counters,
      :street, :outside_trash, :tables, :trailer_sides, :gray_water, :syrup_bottles)

  end
end
