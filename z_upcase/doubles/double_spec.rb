RSpec.describe "A test double" do 
  it "raises errors when messages not allowed or expected ar recieved" do 
    db1 = double("Some Collaborator")
    # the following line below will cause the error to go away
    #allow(db1).to receive("foo")
    db1.foo
  end
end
