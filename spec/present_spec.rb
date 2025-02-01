require "present"

RSpec.describe Present do 
 it "wraps and unwraps a value" do 
  present = Present.new
  present.wrap(4)
  expect(present.unwrap).to eq 4
 end

 it "fails if we unwrap before wrapping first" do 
  present = Present.new
  expect { present.unwrap }.to raise_error "No contents have been wrapped."
 end

 it "fails if we wrap if we already wrapped" do 
  present = Present.new
  present.wrap(4)
  expect { present.wrap(5) }.to raise_error "A contents has already been wrapped." 
 end 

end