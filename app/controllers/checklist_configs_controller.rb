class ChecklistConfigsController < ApplicationController
  before_action :set_checklist_config, only: [:show, :edit, :update, :destroy]
  layout "checklists"

  def index
    @checklist_configs = ChecklistConfig.all
  end

  def show
  end

  def new
    @checklist_config = ChecklistConfig.new
  end

  def edit
  end

  def create
    @checklist_config = ChecklistConfig.new(checklist_config_params)

    respond_to do |format|
      if @checklist_config.save
        format.html { redirect_to @checklist_config, notice: 'Checklist config was successfully created.' }
        format.json { render action: 'show', status: :created, location: @checklist_config }
      else
        format.html { render action: 'new' }
        format.json { render json: @checklist_config.errors, status: :unprocessable_entity }
      end
    end
  end

  def update
    respond_to do |format|
      if @checklist_config.update(checklist_config_params)
        format.html { redirect_to @checklist_config, notice: 'Checklist config was successfully updated.' }
        format.json { head :no_content }
      else
        format.html { render action: 'edit' }
        format.json { render json: @checklist_config.errors, status: :unprocessable_entity }
      end
    end
  end

  def destroy
    @checklist_config.destroy
    respond_to do |format|
      format.html { redirect_to checklist_configs_url }
      format.json { head :no_content }
    end
  end

  private

  def set_checklist_config
    @checklist_config = ChecklistConfig.find(params[:id])
  end

  def checklist_config_params
    params[:checklist_config]
  end
end
