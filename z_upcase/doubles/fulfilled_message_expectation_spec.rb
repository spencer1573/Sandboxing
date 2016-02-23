RSpec.describe "A fulfilled positive message expectation" do 
  it "passes" do 
    dbl = double("Some Collaborator")
    dbl.foo
    expect(dbl).to receive(:foo)
  end
end
