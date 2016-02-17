class PlayersController < ApplicationController
  before_action :set_player, only: [:show, :edit, :update, :destroy]

  respond_to :html

  def index
    @players = Player.all
    respond_with(@players)
  end

  def show
    respond_with(@player)
  end

  def new
    @player = Player.new
    @survivors = Survivor.all
    respond_with(@player, @survivors)
  end

  def edit
    @survivors = Survivor.all
    respond_with(@survivors)
  end

  def create
    @player = Player.new(player_params)
    @player.save
    respond_with(@player)
  end

  def update
    @player.update(player_params)
    respond_with(@player)
  end

  def destroy
    @player.destroy
    respond_with(@player)
  end

  def search
    @players = Player.where("name like ?", "%#{params[:q]}%")
    render :index
  end

  private
    def set_player
      @player = Player.find(params[:id])
    end

    def player_params
      params.require(:player).permit(:name, :points, :place, :wins, :losses, :survivor_ids => [])
    end
end
