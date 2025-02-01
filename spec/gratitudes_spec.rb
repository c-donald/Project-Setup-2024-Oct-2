require "gratitudes"

RSpec.describe Gratitudes do 
it "returns empty array as output" do 
 gratitudes = Gratitudes.new
 expect(gratitudes.format).to eq "Be grateful for: "
 end 

 it "reports an item added to the end of an array" do 
  gratitudes = Gratitudes.new
  gratitudes.add("Court")
  expect(gratitudes.format).to eq "Be grateful for: Court"
 end 

 it "reports a count of added values" do 
  gratitudes = Gratitudes.new
  gratitudes.add("Court")
  gratitudes.add("Happiness")
  gratitudes.add("Home")
  expect(gratitudes.format).to eq "Be grateful for: Court, Happiness, Home" 
 end 
end