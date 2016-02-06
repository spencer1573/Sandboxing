# relishapp.com

require 'rspec'

class Invitation
	def self.deliver; end
	def self.pulle; end	
end


RSpec.describe "have_recieved" do 
	it "passes when the message has been recieved" do 
#		invitation = spy('invitation')
		allow(Invitation).to receive(:pulle)
#		invitation.deliver
		Invitation.pulle
#		expect(invitation).to have_received(:deliver)
		expect(Invitation).to have_received(:pulle)
	end
end
=begin
Rspec.describe "failure when the message has not been received" do
	# you were just looking up example keyword to get
	# an understanding of what it does
	example "for a spy" do

<<<<<<< HEAD
Rspec.describe "failure when the message has not been received" do


end
=======
end
=end
>>>>>>> upcase-spies
