class PokemonsController < ApplicationController
  skip_before_action :authenticate_user!, only: [ :index, :show ]

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
  end

  def pokemon_params
  end
end
