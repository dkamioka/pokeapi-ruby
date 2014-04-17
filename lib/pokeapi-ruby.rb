require "httparty"
Dir[File.dirname(__FILE__) + '/pokedex/*.rb'].each do |file|
  require file
end

Dir[File.dirname(__FILE__) + '/pokemon/*.rb'].each do |file|
  require file
end