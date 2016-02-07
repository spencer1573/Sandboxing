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
  example "for a spy" do
    invitation = spy('iinvitation')
    invitation.deliverr
    expect(invitation).to have_received(:deliverr)
  end
  
  example "for a partial double" do
  end

end
