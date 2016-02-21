RSpec.describe "An unfulfilled positive message expectation" do 
  it "triggers a failure" do 
    dbl = double("Some Collaborator")
    dbl.foo
    expect(dbl).to receive(:foo)
  end
end   
