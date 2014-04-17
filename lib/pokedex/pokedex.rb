module Pokeapi
  class Pokedex
    include HTTParty
    base_uri('http://pokeapi.co')
  end
end