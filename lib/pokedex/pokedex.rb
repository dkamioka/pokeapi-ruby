module Pokeapi
  class Pokedex
    include HTTParty
    base_uri = 'http://pokeapi.co/api/v1/'
  end
end