module Pokeapi
  class Pokedex
    attr_accessor :pokedex

    include HTTParty
    base_uri('http://pokeapi.co/api/v1')

    def list
      @pokedex = self.class.get("/pokedex/1").parsed_response
    end

    def method_missing(name, *args, &block)
      puts "method missing\n"
      if pokedex.has_key?(name.to_s)
        pokedex[name.to_s]
      else
        super
      end
    end

  end
end