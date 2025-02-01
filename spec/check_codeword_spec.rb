require "check_codeword"
RSpec.describe "check codeword Method" do
 it "returns the correct message if given right word" do
  result = check_codeword("horse")
  expect(result).to eq "Correct! Come in."
 end

 it "returns the wrong message if given wrong word" do 
  result = check_codeword("ready")
  expect(result).to eq "WRONG!"
 end

 it "returns the close message if given close word" do 
  result = check_codeword("house")
  expect(result).to eq "Close, but nope."
 end

 it "returns the wrong message if given only first letter correct" do 
  result = check_codeword("horrid")
  expect(result).to eq "WRONG!"
 end
 
 it "returns the wrong message if given only last letter correct" do 
  result = check_codeword("pope")
  expect(result).to eq "WRONG!"
 end
 
 
end