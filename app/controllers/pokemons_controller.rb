class PokemonsController < ApplicationController
  skip_before_action :authenticate_user!, only: [ :index, :show ]
  before_action :set_pokemon, only: [ :show, :create, :destroy ]

  def index
    @pokemons = Pokemon.all
  end

  def show
  end

  def new
  end

  def create
  end

  def destroy
  end

  private

  def set_pokemon
    @pokemon = Pokemon.find(params[:id])
  end

  def pokemon_params
  end
end
