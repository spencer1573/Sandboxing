# relishapp.com

require 'rspec'

class Invitation
  def self.deliver; end
  def self.pulle; end 
end


RSpec.describe "have_recieved" do 
  it "passes when the message has been recieved" do 
#   invitation = spy('invitation')
    allow(Invitation).to receive(:pulle)
#   invitation.deliver
    Invitation.pulle
#   expect(invitation).to have_received(:deliver)
    expect(Invitation).to have_received(:pulle)
  end
end

RSpec.describe "failure when the message has not been received" do

  #so the 'example' keyword is possibly the worst word 
  # for rspec to have chosen for searchabilities sake. i still 
  # havn't figured out what it means and have searched and searched.
=begin
  example "for a spy" do
    invitation = spy('iinvitation')
    #invitation.deliverr
    expect(invitation).to have_received(:deliverr)
  end
=end
  
  example "testing for another thing" do 
    invitation = String.new
<<<<<<< HEAD
    allow(invitation).to receive(:deliverrr)
    invitation.deliverrr
    expect(invitation).to have_received(:deliverrr)
  end
  
  example "for a partial double" do
=======
    # apparently this defines a 'hollow' method for the object
    # without allow, to receive you get an error message
    allow(invitation).to receive(:deliverrr)
    invitation.deliverrr
    expect(invitation).to have_received(:deliverrr)
>>>>>>> tall-yew
  end
  
end

RSpec.describe "An invitation" do
end

$count = 0
#understanding let
RSpec.describe "let" do
  let(:count) { $count += 1 }

  it "memorizes the value" do
    expect(count).to eq(1)
    expect(count).to eq(1)
    $count = $count + 3
    expect($count).to eq(4)
  end
  
  it "is not cached across examples" do
    expect($count).to eq(2)
  end
end


