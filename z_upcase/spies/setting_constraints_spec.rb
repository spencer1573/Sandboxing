RSpec.describe "An invitation" do 
  let(:invitation) { spy("invitation") } 

  before do
    invitation.deliver("foo@example.com")
    invitation.deliver("bar@example.com")
  end

  it "passes when a count constraint is satisfied" do 
    expect(invitation).to have_received(:deliver).twice
  end

  it "passes when an order constraint is satisfied" do
    expect(invitation).to have_received(:deliver).with("foo@example.com")
    expect(invitation).to have_received(:deliver).with("bar@example.com")
  end

  it "fails when a count constraint is not satisfied" do
    expect(invitation).to have_received(:deliver).at_least(3).times
  end

  it "fails when an order constr
  
end
