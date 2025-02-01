require 'counter'

RSpec.describe Counter do 
 it "initially reports a count of zero" do
  counter = Counter.new
  result = counter.report
  expect(result).to eq "Counted to #{0} so far."
 end

 it "reports a count of added values with one addition" do 
  counter = Counter.new
  counter.add(8)
  expect(counter.report).to eq "Counted to 8 so far." 
 end 
 
 it "reports a count of added values" do 
  counter = Counter.new
  counter.add(8)
  counter.add(2)
  counter.add(10)
  expect(counter.report).to eq "Counted to 20 so far." 
 end 


end