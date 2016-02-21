RSpec.describe "A test double" do 
  it "raises errors when messages not allowed or expected ar recieved" do 
    db1 = double("Some Collaborator")
    # the following line below will cause the error to go away
    allow(db1).to receive("foo")
    db1.foo
  end
end


RSpec.describe "A test double" do
  it "returns canned responses from the methods named in the provided hash" do
    dbl = double("Some collaborator",:foo => 3, :bar => 4)
    expect(dbl.foo).to eq(3)
    expect(dbl.bar).to eq(4)
  end
end

  


























