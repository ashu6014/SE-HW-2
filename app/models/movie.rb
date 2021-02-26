class Movie < ActiveRecord::Base

    def self.all_ratings
      select(:rating).map(&:rating).uniq
    end
    
    def self.with_ratings(ratings)
        Movie.where(rating:ratings) #filter by the rating and remember the sorted column
    end
    
end


