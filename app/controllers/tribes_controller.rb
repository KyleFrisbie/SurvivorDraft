class TribesController < ApplicationController
  before_action :set_tribe, only: [:show, :edit, :update, :destroy]

  respond_to :html

  def index
    @tribes = Tribe.all
    respond_with(@tribes)
  end

  def show
    respond_with(@tribe)
  end

  def new
    @tribe = Tribe.new
    respond_with(@tribe)
  end

  def edit
  end

  def create
    @tribe = Tribe.new(tribe_params)
    @tribe.save
    respond_with(@tribe)
  end

  def update
    @tribe.update(tribe_params)
    respond_with(@tribe)
  end

  def destroy
    @tribe.destroy
    respond_with(@tribe)
  end

  private
    def set_tribe
      @tribe = Tribe.find(params[:id])
    end

    def tribe_params
      params.require(:tribe).permit(:name, :tribe_generation)
    end
end
