class SurvivorsController < ApplicationController
  before_action :set_survivor, only: [:show, :edit, :update, :destroy]

  respond_to :html

  def index
    @survivors = Survivor.all
    respond_with(@survivors)
  end

  def show
    respond_with(@survivor)
  end

  def new
    @survivor = Survivor.new
    respond_with(@survivor)
  end

  def edit
  end

  def create
    @survivor = Survivor.new(survivor_params)
    @survivor.save
    respond_with(@survivor)
  end

  def update
    @survivor.update(survivor_params)
    respond_with(@survivor)
  end

  def destroy
    @survivor.destroy
    respond_with(@survivor)
  end

  private
    def set_survivor
      @survivor = Survivor.find(params[:id])
    end

    def survivor_params
      params.require(:survivor).permit(:name, :age, :residence, :photo_url, :fantasy, :elimination_number)
    end
end