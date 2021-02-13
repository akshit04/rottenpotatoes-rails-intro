class Movie < ActiveRecord::Base
    def self.all_ratings
        self.select(:rating).map(&:rating).uniq
    end
    
    def self.with_ratings(ratings_list)
        ratings = ratings_list.present? ? ratings_list.keys : all_ratings
        self.where(rating: ratings)
    end
end
