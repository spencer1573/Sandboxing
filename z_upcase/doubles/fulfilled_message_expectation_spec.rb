RSpec.describe "A fulfilled positive message expectation" do 
  it "passes" do 
    dbl = double("Some Collaborator")
    # you must place the message sent event
    # dbl.foo 
    # after not before expect
    expect(dbl).to receive(:foo)
    dbl.foo
  end
end







