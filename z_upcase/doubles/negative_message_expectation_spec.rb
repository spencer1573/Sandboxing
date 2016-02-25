RSpec.describe "A negative message expectation" do 
  it "fails when the message is received" do 
    dbl = double("some collaborator").as_null_object
    expect(dbl).not_to receive(:foo)
    dbl.foo
  end
end
