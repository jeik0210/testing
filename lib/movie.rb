class Movie
	attr_reader :title :ratings
	def initialize title
		@title = title
		@ratings = []
	end	

	def rate value
		@ratings.push value
		value
	end
	def rating 
		@ratings.inject(0.0){|sum,iterator| sum += iterator } / @ratings.ratings.size
	end
end
