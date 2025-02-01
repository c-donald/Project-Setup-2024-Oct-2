require "report_length"

RSpec.describe "report length method" do 
 it "Return the length of the string" do 
 result = report_length("Court")
 expect(result).to eq "This string was #{5} characters long."
end 

end 