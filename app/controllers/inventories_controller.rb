class InventoriesController < ApplicationController
  before_action :set_inventory, only: [:show, :edit, :update, :destroy]
  layout "checklists"

  def inventory
    inventory = Inventory.find_or_create_by(date: Date.today)
    redirect_to edit_inventory_path(inventory)
  end

  def index
    @inventories = Inventory.all
  end

  def show
  end

  def new
    @inventory = Inventory.new
  end

  def edit
  end

  def create
    @inventory = Inventory.new(inventory_params)

    respond_to do |format|
      if @inventory.save
        format.html { redirect_to @inventory }
        format.json { render action: 'show', status: :created, location: @inventory }
      else
        format.html { render action: 'new' }
        format.json { render json: @inventory.errors, status: :unprocessable_entity }
      end
    end
  end

  def update
    respond_to do |format|
      if @inventory.update(inventory_params)
        format.html { redirect_to @inventory }
        format.json { head :no_content }
      else
        format.html { render action: 'edit' }
        format.json { render json: @inventory.errors, status: :unprocessable_entity }
      end
    end
  end

  def destroy
    @inventory.destroy
    respond_to do |format|
      format.html { redirect_to inventories_url }
      format.json { head :no_content }
    end
  end

  private

  def set_inventory
    @inventory = Inventory.find(params[:id])
  end

  def inventory_params
    params.require(:inventory).permit(:date, :ice_cream, :sugar, :dish_soap,
      :hand_soap, :bleach, :pine_sol, :snowball_shed, :snowball_sleeves,
      :snowball_loose, :snowball_total, :mountain_shed, :mountain_sleeves,
      :mountain_loose, :mountain_total, :glacier_shed, :glacier_sleeves,
      :glacier_loose, :glacier_total, :avalanche_shed, :avalanche_sleeves,
      :avalanche_loose, :avalanche_total, :bahama_mama, :banana, :blueberry,
      :blue_raspberry, :bubble_gum, :byu, :cherry, :coconut, :cotton_candy,
      :grape, :georgia_peach, :green_apple, :lime, :mango, :orange, :pina_colada,
      :pineapple, :pink_lemonade, :rootbeer, :silver_fox, :strawberry,
      :tigers_blood, :utes, :watermelon, :wedding_cake, :wildcat, :dreamcicle,
      :sodium_benzoate, :citric_acid, :sour_snow, :spoons_full, :spoons_partial,
      :straws, :napkins, :paper_towells, :gloves, :large_garbage_bags, :small_garbage_bags,
      :order_pads, :hc, :scm, :em, :chocolate, :pop_rocks)
  end
end
