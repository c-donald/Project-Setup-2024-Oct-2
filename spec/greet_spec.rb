require "greet"

RSpec.describe "greet method" do
  it "greet user name" do 
    result = greet("Court")
    expect(result).to eq "Hello Court!"
  end
end
