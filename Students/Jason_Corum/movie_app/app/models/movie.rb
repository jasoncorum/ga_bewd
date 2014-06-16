class Movie < ActiveRecord::Base

	validates :title, presence: true
	validates :description, presence: true
	validates :description, length: {minimum: 10}
	validates :year_released, presence: true
	validates :year_released, numericality: {greater_than: 0}

	def self.search_movie(param)
		where('title LIKE :query OR description LIKE :query OR year_released LIKE :query', query: "%#{param}%")
	end

end
