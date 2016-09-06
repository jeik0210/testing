require 'minitest/autorun'
require 'minitest/spec'
$:.unshift File.expand_path(File.dirname(__FILE__) + '/..')
require 'lib/movie' 

describe Movie do
	subject {Movie.new "Jeison Samir"}

	it "must be instance of Movie" do
		subject.must_be_instance_of Movie
	end
	it "must have a title " do
		subject.must_respond_to 'title'
	end
	it "must initialize with a title" do
		movie = Movie.new "rapidos y furiosos 5 control"
		movie.title.must_equal "rapidos y furiosos 5 control"
	end
	it "shoul have rating " do
		subject.must_respond_to 'ratings'
	end
	it "must have an emty array of ratings" do
		subject.ratings.must_be_instance_of Array
		subject.ratings.must_be_empty
	end

	describe '#rate' do
		before do
			@movie = Movie.new "rapidos y furiosos 5 control"
		end
		it "responds to the rate method" do
			@movie.must_respond_to 'rate'
		end
		it "returns the valueof the rate" do
			@movie.rate(5).must_equal 5
		end
		it "adds the value to the ratings" do
			@movie.rate 5
			@movie.ratings.must_inclue 5
		end
	end
	describe '#rating' do
		before do
			@list_of_rates = [1,4,3,5]
			@movie = Movie.new "dragon ball z"
		end
		it "responds to the rating method" do
			@movie.must_respond_to 'rating'
		end
		it "returns the value of the rating movie" do
			@list_of_rates.each do |rate|
				@movie.rate rate
			end
			@movie.rating.must_equal @movie.ratings.inject(0,0){ |sum,iterator| sum += iterator} / @movie.ratings.size
		end
	end
end