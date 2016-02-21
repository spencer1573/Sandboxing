=begin
RSpec.describe "allow" do
  it "returns nil from allowed messages" do 
    dbl = double("Some Collaborator")
    allow(dbl).to receive(:foo)
    expect(dbl.fooo).to be_nil
    p "dbl.foo= #{dbl.foox}"             
  end
end  
=end
 
RSpec.describe "receive_messages" do
  it "configures return values for the provided messages" do
    dbl = double("some collaborator")
    allow(dbl).to receive_messages(:foo => 2, :bar => 3)
    expect(dbl.foo).to eq(2)
    expect(dbl.bar).to eq(3)
  end
end





















