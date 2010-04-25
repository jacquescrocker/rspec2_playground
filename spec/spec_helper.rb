
# requires everything in lib/ folder
Dir[File.expand_path("../../lib/*.rb", __FILE__)].each do |f|
  require f
end