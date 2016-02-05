# relishapp.com

require 'rspec'



class Invitation
	def self.deliver; end
	def self.pulle; end	
end


RSpec.describe "have_recieved" do 
	it "passes when the message has been recieved" do 
#		invitation = spy('invitation')
		allow(invitation).to receive(:pulle)
#		invitation.deliver
		invitation.pulle
#		expect(invitation).to have_received(:deliver)
		expect(invitation).to have_received(:pulle)
	end
end

 
