RSpec.describe "An unfulfilled positive message expectation" do 
  it "triggers a failure" do 
    dbl = double("Some Collaborator")
    expect(dbl).to receive(:foo)
  end
end
