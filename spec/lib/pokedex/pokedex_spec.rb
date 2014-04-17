require_relative '../../spec_helper'
# For Ruby < 1.9.3, use this instead of require_relative
# require (File.expand_path('./../../../spec_helper', __FILE__))
 
describe Pokeapi::Pokedex do
	
  describe "default attributes" do
    it "must include httparty methods" do
      Pokeapi::Pokedex.must_include HTTParty
    end

    it "must have the base url set to the Pokeapi endpoint" do
      Pokeapi::Pokedex.base_uri.must_equal 'http://pokeapi.co/api/v1/'
    end
  end
 
  it "must work" do
    "Yay!".must_be_instance_of String
  end
 
end