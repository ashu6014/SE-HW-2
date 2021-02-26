class Movie < ActiveRecord::Base

    def self.all_ratings
      return ['G', 'PG', 'PG-13' ,'R'] #collection of movie ratings
    end
    
    def self.with_ratings(ratings)
        Movie.where(rating:ratings) #filter by the rating and remember the sorted column
    end
    
end


