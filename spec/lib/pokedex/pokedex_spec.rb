require_relative '../../spec_helper'
# For Ruby < 1.9.3, use this instead of require_relative
# require (File.expand_path('./../../../spec_helper', __FILE__))
require 'minitest/debugger' if ENV['DEBUG']

describe Pokeapi::Pokedex do
	
  # describe "default attributes" do
  #   it "must include httparty methods" do
  #     Pokeapi::Pokedex.must_include HTTParty
  #   end

  #   it "must have the base url set to the Pokeapi endpoint" do
  #     puts Pokeapi::Pokedex.base_uri
  #     Pokeapi::Pokedex.base_uri.must_equal 'http://pokeapi.co/api/v1'
  #   end
  # end  

  describe "GET Pokedex" do

    before do
      VCR.insert_cassette('Pokedex', record: :new_episodes) 
    end

    let(:pokedex) { Pokeapi::Pokedex.new}

    after do
      VCR.eject_cassette
    end

    it "records the fixture" do
      pokedex.list
    end

    # it "must have the created date"  do
    #   pokedex.must_respond_to :created
    # end

    # it "must have the modified date" do
    #   pokedex.must_respond_to :modified
    # end

    # it "must have the pokedex name" do
    #   pokedex.must_respond_to :name
    # end

    it "must have a big list of pokemon within this pokedex" do
      pokedex.must_respond_to :pokemon
    end

    # it "must have a big list of pokemon within this pokedex as an Array" do
    #   pokedex.pokemon.must_be_instance_of Array
    # end

    # it "must have the uri and the name of each pokemon" do
    #   pokedex.pokemon.each do |pokemon|
    #     pokemon.must_respond_to :resource_uri
    #     pokemon.must_respond_to :name
    #   end
    # end

  end
end