class OpensController < ApplicationController
  before_action :set_open, only: [:show, :edit, :update, :destroy]
  layout "checklists"

  def open
    open = Open.find_or_create_by(date: Date.today)
    redirect_to edit_open_path(open)
  end

  def index
    @opens = Open.all
  end

  def show
  end

  def new
    @open = Open.new
  end

  def edit
  end

  def create
    @open = Open.new(open_params)

    respond_to do |format|
      if @open.save
        format.html { redirect_to @open, notice: 'Open was successfully created.' }
        format.json { render action: 'show', status: :created, location: @open }
      else
        format.html { render action: 'new' }
        format.json { render json: @open.errors, status: :unprocessable_entity }
      end
    end
  end

  def update
    respond_to do |format|
      if @open.update(open_params)
        format.html { redirect_to open_path, notice: 'Open was successfully updated.' }
        format.json { head :no_content }
      else
        format.html { render action: 'edit' }
        format.json { render json: @open.errors, status: :unprocessable_entity }
      end
    end
  end

  def destroy
    @open.destroy
    respond_to do |format|
      format.html { redirect_to opens_url }
      format.json { head :no_content }
    end
  end

  private

  def set_open
    @open = Open.find(params[:id])
  end

  def open_params
    params.require(:open).permit(:date, :clock_in, :ice_out, :connect_water,
      :quarters, :ones, :fives, :tens, :twenties, :total, :pump_on, :make_sani,
      :rags_out, :fill_paper, :wash_nightcaps, :fill_flavors, :fill_scm,
      :sugar_water, :dishes_away, :counters, :inventory, :outside_trash,
      :open_umbrellas, :tables, :trailer_sides, :gray_water, :trash_can,
      :open_awnings, :speaker_up)
  end
end
