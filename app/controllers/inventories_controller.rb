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

  def email
    inventory = Inventory.where(date: params[:date]).first
    InventoryMailer.submit(inventory).deliver
    render nothing: true
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
      :straws_full, :straws_partial, :napkins_full, :napkins_partial, :paper_towells, :gloves, :large_garbage_bags, :small_garbage_bags,
      :order_pads, :hc, :scm, :em, :chocolate, :pop_rocks,
      :ice_cream_home, :sugar_home, :dish_soap_home,
      :hand_soap_home, :bleach_home, :pine_sol_home, :snowball_home,
      :mountain_home, :glacier_home, :avalanche_home,
      :bahama_mama_home, :banana_home, :blueberry_home,
      :blue_raspberry_home, :bubble_gum_home, :byu_home, :cherry_home, :coconut_home, :cotton_candy_home,
      :grape_home, :georgia_peach_home, :green_apple_home, :lime_home, :mango_home, :orange_home, :pina_colada_home,
      :pineapple_home, :pink_lemonade_home, :rootbeer_home, :silver_fox_home, :strawberry_home,
      :tigers_blood_home, :utes_home, :watermelon_home, :wedding_cake_home, :wildcat_home, :dreamcicle_home,
      :sodium_benzoate_home, :citric_acid_home, :sour_snow_home, :spoons_home,
      :straws_home, :napkins_home, :paper_towells_home, :gloves_home, :large_garbage_bags_home, :small_garbage_bags_home,
      :order_pads_home, :hc_home, :scm_home, :em_home, :chocolate_home, :pop_rocks_home)
  end
end
