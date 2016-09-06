require 'minitest/spec'
require 'minitest/autorun'

describe 'MyTestSuit' do

	before do 
		@array = []
	end
	it "adds 2 + 2 " do
		(2 + 2).must_equal 4
	end

	it "includes a dog" do
		%w(dog cat elephant).must_include 'dog'
	end

	it "is instance of fixnum" do
		(2 + 2).must_be_instance_of Fixnum
	end

	it "must be nill" do
		a = nil
		a.must_be_nil
	end

	it "must raise an error " do
		proc {@array.watever}.must_raise NoMethodError
	end
end
