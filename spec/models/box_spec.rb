require 'rails_helper'

RSpec.describe Box, type: :model do
	it "is created with valid attributes" do
		expect(Box.new :serial_number => 'loremipsum').to be_valid
	end
	it "is not valid without a serial_number" do
		box = Box.new('serial_number':nil)
		expect(box).to_not be_valid
	end
	it "should have a valid display_name field" do
		box = Box.new('serial_number':'AADD', 'display_name':"Test Box" )
		expect(box).to be_valid		
	end
end
